package demo.hello;

import demo.utils.QRCodeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.util.*;

@RestController
public class TestController {

    @Autowired
    private SimpMessagingTemplate template;

    @Autowired
    private ResultDAO resultDAO;

    @Autowired
    private ProjectDAO projectDAO;

    private static String DOMAIN = "voting-tomcat8.a3c1.starter-us-west-1.openshiftapps.com ";//"localhost:8080";

    @RequestMapping("/test_send")
    public Greeting greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
        this.template.convertAndSend("/topic/rating1", new Random().nextInt(5));
        this.template.convertAndSend("/topic/rating2", new Random().nextInt(5));
        this.template.convertAndSend("/topic/rating3", new Random().nextInt(5));
        this.template.convertAndSend("/topic/rating4", new Random().nextInt(5));
        this.template.convertAndSend("/topic/rating5", new Random().nextInt(5));
        this.template.convertAndSend("/topic/rating6", new Random().nextInt(5));
        this.template.convertAndSend("/topic/rating7", new Random().nextInt(5));
        this.template.convertAndSend("/topic/rating8", new Random().nextInt(5));
        return new Greeting("Hello, " + name + "!");
    }

    @RequestMapping("/info")
    public List<Project> queryProjectInfo() {
        return projectDAO.getAllProjectInfo();
    }

    @RequestMapping(value = "/voting_test", method = RequestMethod.POST)
    @ResponseBody
    public SubmitResult voting(@RequestBody Map<String, Object> payload) {
        System.out.println(payload);

        Result item = new Result();
        item.setProjectID((Integer) payload.get("project_id"));
        item.setKeyBusiness((Integer) payload.get("key_business"));
        item.setPriority((Integer) payload.get("priority"));
        item.setModified(new Timestamp(new Date().getTime()));

        int res = resultDAO.create(item);
        return new SubmitResult(res);
    }

    @RequestMapping(value = "/voting_test2", method = RequestMethod.POST,
            consumes = MediaType.APPLICATION_JSON_UTF8_VALUE,
            produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public SubmitResult voting2(@RequestBody List<Map> listItem) {

        for (int i = 0; i < listItem.size(); i++) {
            Map payload = listItem.get(i);
            System.out.println(payload);

            Result item = new Result();

            int project_id = (Integer) payload.get("project_id");
            int key_business = (Integer) payload.get("key_business");
            int priority = (Integer) payload.get("priority");

            item.setProjectID(project_id);
            item.setKeyBusiness(key_business);
            item.setPriority(priority);
            item.setModified(new Timestamp(new Date().getTime()));
            int res = resultDAO.create(item);

            Map map = resultDAO.average(project_id);

            this.template.convertAndSend("/topic/rating" + String.valueOf(i * 2 + 1), map.get("avg_k"));
            this.template.convertAndSend("/topic/rating" + String.valueOf(i * 2 + 2), map.get("avg_p"));
        }
        return new SubmitResult(1);
    }

    @RequestMapping("/test_get_score")
    public List<Score> testGetScore(@RequestParam(value = "menu", defaultValue = "World") String menu) {
        System.out.println("menu :: " + menu);
        List<Score> rv = new ArrayList<Score>();
        rv.add(new Score(new Random().nextInt(100)));
        rv.add(new Score(new Random().nextInt(100)));
        rv.add(new Score(new Random().nextInt(100)));
        rv.add(new Score(new Random().nextInt(100)));
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
                        text = "http://" + DOMAIN + "/voting1?menu=1";
                        break;
                    case 2:
                        text = "http://" + DOMAIN + "/voting1?menu=2";
                        break;
                    case 3:
                        text = "http://" + DOMAIN + "/voting1?menu=3";
                        break;
                    case 4:
                        text = "http://" + DOMAIN + "/voting1?menu=4";
                        break;
                    default:
                        text = text = "http://" + DOMAIN + "/voting1";
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
