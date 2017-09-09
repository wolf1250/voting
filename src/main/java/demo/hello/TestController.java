package demo.hello;

import demo.utils.QRCodeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

@RestController
public class TestController {

    @Autowired
    private SimpMessagingTemplate template;

    @Autowired
    private ResultDAO resultDAO;

    @Autowired
    private ProjectDAO projectDAO;

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
        item.setProjectID((Integer)payload.get("project_id"));
        item.setKeyBusiness((Integer)payload.get("key_business"));
        item.setPriority((Integer)payload.get("priority"));
        item.setModified(new Timestamp(new Date().getTime()));

        int res = resultDAO.create(item);
        return new SubmitResult(res);
    }

    @GetMapping(value = "/qrcode", produces = MediaType.IMAGE_PNG_VALUE)
    public ResponseEntity<byte[]> getQRCode(@RequestParam(value = "text", required = false) String text) {
        try {
            return ResponseEntity.ok()
                    .body(QRCodeUtil.generateQRCode("http://localhost:8080/voting1", 256, 256));
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
