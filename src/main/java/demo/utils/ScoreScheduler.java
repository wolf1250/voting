package demo.utils;

import demo.config.QueueConfig;
import demo.entity.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class ScoreScheduler {
    @Autowired
    private SimpMessagingTemplate template;

    @Autowired
    QueueConfig queueConfig;

    @Scheduled(fixedRate = 1 * 500)
    public void greeting() {
        if(!queueConfig.blockingQueue().isEmpty()){
            System.out.println("blocking queue is not empty");
            Item payload = queueConfig.blockingQueue().poll();
            System.out.println(payload);
            this.template.convertAndSend("/topic/counting", payload);
        }
        System.out.println("blocking queue is empty");
    }
}
