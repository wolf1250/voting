package demo.hello;

import demo.entity.*;
import demo.utils.IPUtils;
import demo.utils.QRCodeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.*;

@RestController
public class TestController {

    @Autowired
    private SimpMessagingTemplate template;

    @Autowired
    private ResultDAO resultDAO;

    @Autowired
    private ProjectDAO projectDAO;

    private static String DOMAIN = "voting-tomcat8.a3c1.starter-us-west-1.openshiftapps.com";//"localhost:8080";

    @RequestMapping("/test_send")
    public Greeting greeting(@RequestParam(value = "menu", required = true) int menu) {
        this.template.convertAndSend("/topic/menu-" + menu + "/rating1", new Random().nextInt(5));
        this.template.convertAndSend("/topic/menu-" + menu + "/rating2", new Random().nextInt(5));
        this.template.convertAndSend("/topic/menu-" + menu + "/rating3", new Random().nextInt(5));
        this.template.convertAndSend("/topic/menu-" + menu + "/rating4", new Random().nextInt(5));
        this.template.convertAndSend("/topic/menu-" + menu + "/rating5", new Random().nextInt(5));
        this.template.convertAndSend("/topic/menu-" + menu + "/rating6", new Random().nextInt(5));
        this.template.convertAndSend("/topic/menu-" + menu + "/rating7", new Random().nextInt(5));
        this.template.convertAndSend("/topic/menu-" + menu + "/rating8", new Random().nextInt(5));
        return new Greeting("Hello, World!");
    }

    @RequestMapping("/info")
    public List<Project> queryProjectInfo() {
        return projectDAO.getAllProjectInfo();
    }

    @RequestMapping("/remove")
    public int removeResultByToken(@RequestParam(value = "token", required = true) String token) {
        System.out.println(token);
        return resultDAO.removeByToken(token);
    }

    @RequestMapping(value = "/voting_test", method = RequestMethod.POST)
    @ResponseBody
    public SubmitResult voting(@RequestBody Map<String, Object> payload) {
        System.out.println(payload);

        Result item = new Result();
        item.setProjectID((Integer) payload.get("project_id"));
        item.setToken((String) payload.get("token"));
        item.setKeyBusiness((double) payload.get("key_business"));
        item.setPriority((double) payload.get("priority"));
        item.setModified(new Timestamp(new Date().getTime()));

        int res = resultDAO.create(item);
        return new SubmitResult(res);
    }

    @RequestMapping(value = "/post_voting", method = RequestMethod.POST,
            consumes = MediaType.APPLICATION_JSON_UTF8_VALUE,
            produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public SubmitResult voting2(@RequestHeader(value = "User-Agent") String userAgent,
                                @RequestBody Map<String, Object> payload,
                                HttpServletRequest request) {
        System.out.println("userAgent :: " + userAgent);
        String ip = IPUtils.getClientIpAddress ( request );
        System.out.println("ip :: " + ip);
        int row = 0;
        DecimalFormat df = new DecimalFormat("#.#");

        System.out.println(payload);
        int menu = (Integer) payload.get("menu");
        String token = (String) payload.get("token");

        List<Map> listItem = (List) payload.get("rating");
        for (int i = 0; i < listItem.size(); i++) {
            Map itme = listItem.get(i);
            System.out.println(payload);

            Result result = new Result();

            int project_id = (Integer) itme.get("project_id");
            double key_business = Double.valueOf((String) itme.get("key_business"));
            double priority = Double.valueOf((String) itme.get("priority"));

            System.out.println("target :: /topic/menu-" + menu + "/rating" + String.valueOf(i * 2 + 1));
            System.out.println("target :: /topic/menu-" + menu + "/rating" + String.valueOf(i * 2 + 2));

            result.setProjectID(project_id);
            result.setToken(token);
            result.setKeyBusiness(key_business);
            result.setPriority(priority);
            result.setModified(new Timestamp(new Date().getTime()));

            try {
                row += resultDAO.create(result);
                Map map = resultDAO.average(project_id);

                this.template.convertAndSend("/topic/menu-" + menu + "/rating" + String.valueOf(i * 2 + 1), df.format(map.get("avg_k")));
                this.template.convertAndSend("/topic/menu-" + menu + "/rating" + String.valueOf(i * 2 + 2), df.format(map.get("avg_p")));
            } catch (DuplicateKeyException e) {
                e.printStackTrace();
                break;
            }
        }
        return new SubmitResult(row);
    }

    @RequestMapping("/get_random_score")
    public List<Score> getRandomScore(@RequestParam(value = "menu", required = true) int menu) {
        List<Score> rv = new ArrayList<Score>();
        rv.add(new Score(new Random().nextInt(100)));
        rv.add(new Score(new Random().nextInt(100)));
        rv.add(new Score(new Random().nextInt(100)));
        rv.add(new Score(new Random().nextInt(100)));

        return rv;
    }

    @RequestMapping("/get_score")
    public List<Score> testGetScore(@RequestParam(value = "menu", required = true) int menu) {
        System.out.println("menu :: " + menu);
        Map map1 = resultDAO.average(menu * 4 - 3);
        Map map2 = resultDAO.average(menu * 4 - 2);
        Map map3 = resultDAO.average(menu * 4 - 1);
        Map map4 = resultDAO.average(menu * 4);

        switch (menu) {
            case 1:
                return getGroup1Score(map1, map2, map3, map4);
            case 2:
                return getGroup2Score(map1, map2, map3, map4);
            case 3:
                return getGroup3Score(map1, map2, map3, map4);
            case 4:
                return getGroup4Score(map1, map2, map3, map4);
            default:
                return getGroup1Score(map1, map2, map3, map4);
        }


    }

    private List<Score> getGroup1Score(Map map1, Map map2, Map map3, Map map4) {

        List<Score> rv = new ArrayList<Score>();
        rv.add(new Score(new Project1Item((Double) map1.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));
        rv.add(new Score(new Project2Item((Double) map2.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));
        rv.add(new Score(new Project3Item((Double) map3.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));
        rv.add(new Score(new Project4Item((Double) map4.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));

        return rv;
    }


    private List<Score> getGroup2Score(Map map1, Map map2, Map map3, Map map4) {

        List<Score> rv = new ArrayList<Score>();
        rv.add(new Score(new Project5Item((Double) map1.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));
        rv.add(new Score(new Project6Item((Double) map2.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));
        rv.add(new Score(new Project7Item((Double) map3.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));
        rv.add(new Score(new Project8Item((Double) map4.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));

        return rv;
    }

    private List<Score> getGroup3Score(Map map1, Map map2, Map map3, Map map4) {

        List<Score> rv = new ArrayList<Score>();
        rv.add(new Score(new Project9Item((Double) map1.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));
        rv.add(new Score(new Project10Item((Double) map2.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));
        rv.add(new Score(new Project11Item((Double) map3.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));
        rv.add(new Score(new Project12Item((Double) map4.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));

        return rv;
    }

    private List<Score> getGroup4Score(Map map1, Map map2, Map map3, Map map4) {

        List<Score> rv = new ArrayList<Score>();
        rv.add(new Score(new Project13Item((Double) map1.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));
        rv.add(new Score(new Project14Item((Double) map2.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));
        rv.add(new Score(new Project15Item((Double) map3.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));
        rv.add(new Score(new Project16Item((Double) map4.get("avg_k"), (Double) map1.get("avg_p")).getTotal()));

        return rv;
    }

    @RequestMapping("/get_rating")
    public List<Score> getRatingByMenu(@RequestParam(value = "menu", required = true) int menu) {
        System.out.println("menu :: " + menu);
        List<Score> rv = new ArrayList<Score>();

        try {
            Map map1 = resultDAO.average(menu * 4 - 3);
            Map map2 = resultDAO.average(menu * 4 - 2);
            Map map3 = resultDAO.average(menu * 4 - 1);
            Map map4 = resultDAO.average(menu * 4);

            rv.add(new Score((Double) map1.get("avg_k")));
            rv.add(new Score((Double) map1.get("avg_p")));

            rv.add(new Score((Double) map2.get("avg_k")));
            rv.add(new Score((Double) map1.get("avg_p")));

            rv.add(new Score((Double) map3.get("avg_k")));
            rv.add(new Score((Double) map1.get("avg_p")));

            rv.add(new Score((Double) map4.get("avg_k")));
            rv.add(new Score((Double) map1.get("avg_p")));

        } catch (Exception e) {
            e.printStackTrace();
            rv.add(new Score(0.0));
            rv.add(new Score(0.0));

            rv.add(new Score(0.0));
            rv.add(new Score(0.0));

            rv.add(new Score(0.0));
            rv.add(new Score(0.0));

            rv.add(new Score(0.0));
        }

        return rv;
    }

    @GetMapping(value = "/qrcode", produces = MediaType.IMAGE_PNG_VALUE)
    public ResponseEntity<byte[]> getQRCode(@RequestParam(value = "text", required = false) String text,
                                            @RequestParam(value = "menu", required = false, defaultValue = "0") int menu,
                                            @RequestParam(value = "size", required = false, defaultValue = "256") int size) {
        try {
            System.out.println("menu :: " + menu);
            System.out.println("text :: " + text);
            System.out.println("size :: " + size);
            if (null == text || "".equals(text)) {
                switch (menu) {
                    case 1:
                        text = "http://" + DOMAIN + "/voting?menu=1";
                        break;
                    case 2:
                        text = "http://" + DOMAIN + "/voting?menu=2";
                        break;
                    case 3:
                        text = "http://" + DOMAIN + "/voting?menu=3";
                        break;
                    case 4:
                        text = "http://" + DOMAIN + "/voting?menu=4";
                        break;
                    default:
                        text = text = "http://" + DOMAIN + "/voting";
                        break;
                }
            }

            return ResponseEntity.ok()
                    .body(QRCodeUtil.generateQRCode(text, size, size));
        } catch (Exception ex) {
            throw new InternalServerError("Error while generating QR code image.", ex);
        }
    }

    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public class InternalServerError extends RuntimeException {

        private static final long serialVersionUID = 1L;

        public InternalServerError(final String message, final Throwable cause) {
            super(message);
        }

    }


}
