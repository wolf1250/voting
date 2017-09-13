package demo.hello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.UUID;

@Controller
public class GreetingController {

    @Autowired
    private SimpMessagingTemplate template;

    @Autowired
    private ResultDAO resultDAO;

    @Autowired
    private ProjectDAO projectDAO;

    @MessageMapping("/demo/hello")
    @SendTo("/topic/greetings")
    public Greeting greeting(HelloMessage message) throws Exception {
        Thread.sleep(1000); // simulated delay
        System.out.println("websocket test");
        return new Greeting("Hello, " + message.getName() + "!");
    }


    @RequestMapping("/voting")
    public String toVotingPage(HttpServletRequest request,
                               HttpServletResponse response,
                               @RequestParam(value = "menu", required = false, defaultValue = "1") int menu) {
        System.out.println("toVotingPage :: " + menu);

        VotingToken token = new VotingToken(menu);
        response = token.check(request, response);

        return token.getReturnPage();
    }


    @RequestMapping("/greeting")
    public String greeting(@RequestParam(value = "name", required = false, defaultValue = "World") String name, Model model) {
        model.addAttribute("name", name);
        this.template.convertAndSend("/topic/greetings", new Greeting("Hello, " + name + "!"));
        return "greeting";
    }

    @RequestMapping("/test")
    public String toTestPage(Model model) {
        System.out.println("totest");
        return "test";
    }

    @RequestMapping("/")
    public String toIndex(Model model) {
        System.out.println("toIndex");
        return "index";
    }


}
