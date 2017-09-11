package demo.hello;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Map;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment= SpringBootTest.WebEnvironment.RANDOM_PORT)
public class ResultDAOTest {
    @Autowired
    ResultDAO resultDAO;

    @Test
    public void create() throws Exception {
    }

    @Test
    public void average() throws Exception {
        Map map;
        map = resultDAO.average(2);
        System.out.println(map.get("avg_p"));
        System.out.println(map.get("avg_k"));

        map = resultDAO.average(3);
        System.out.println(map.get("avg_p"));
        System.out.println(map.get("avg_k"));
//        System.out.println(resultDAO.average(3));
    }

}