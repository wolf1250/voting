package demo.hello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

@RestController
public class TestController {

    @Autowired
    private SimpMessagingTemplate template;

    @Autowired
    private ResultDAO resultDAO;

    @Autowired
    private ProjectDAO projectDAO;

//    @RequestMapping("/greeting")
//    public Greeting greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
//        this.template.convertAndSend("/topic/greetings", new Greeting("Hello, " + name + "!"));
//        return new Greeting("Hello, " + name + "!");
//    }

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


}
