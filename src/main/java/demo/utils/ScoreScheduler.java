package demo.utils;

import demo.config.QueueConfig;
import demo.entity.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class ScoreScheduler {
    @Autowired
    private SimpMessagingTemplate template;

    @Autowired
    QueueConfig queueConfig;

    @Scheduled(fixedRate = 30* 1000)
    public void greeting() {
        if(!queueConfig.blockingQueue().isEmpty()){
            System.out.println("blocking queue is not empty");
            List<Item> items = new ArrayList<>();
            int drainCount = queueConfig.blockingQueue().drainTo(items,2);
            items.stream().forEach(payload -> template.convertAndSend("/topic/counting", payload));
        }
        System.out.println("blocking queue is empty");
    }
}
