package hello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class TestController {

    @Autowired
    private SimpMessagingTemplate template;

    @Autowired
    private ProjectDAO dao;

    @RequestMapping("/greeting")
    public Greeting greeting(@RequestParam(value="name", defaultValue="World") String name) {
        this.template.convertAndSend("/topic/greetings", new Greeting("Hello, " + name + "!"));
        return new Greeting("Hello, " + name + "!");
    }

    @RequestMapping("/info")
    public List<Project> queryProjectInfo() {
        return dao.getAllProjectInfo();
    }
}
