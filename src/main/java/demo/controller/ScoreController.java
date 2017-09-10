package demo.controller;

import demo.config.QueueConfig;
import demo.entity.Item;
import demo.entity.ItemMock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class ScoreController {

    @Autowired
    QueueConfig queueConfig;


    @RequestMapping("/score")
    public String toScore(HttpServletRequest request, HttpServletResponse response, Model model) {
        System.out.println("toScore");
        return "score";
    }

    @RequestMapping("/submit_test")
    public @ResponseBody String count() throws InterruptedException {
        System.out.println("submit_test");
        Thread.sleep(1000); // simulated delay

        queueConfig.blockingQueue().add(ItemMock.mockItem());
        return "good";
    }

}
