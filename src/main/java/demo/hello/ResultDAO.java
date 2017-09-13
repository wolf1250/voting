package demo.hello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.validation.constraints.Null;
import java.util.Map;

@Repository
public class ResultDAO {

    @Autowired
    private JdbcTemplate db;

    public int create(Result result){
        Object[] parm = result.getObjectArray();
        String sql = "insert into result (project_id, token, key_business, priority, modified) values (?,?,?,?,?)";
        return db.update(sql, parm);
    }

    public Map average(int project_id){
        StringBuilder sql = new StringBuilder();

        sql.append("SELECT avg(priority) AS avg_p,avg(key_business) AS avg_k ");
        sql.append("FROM result                            ");
        sql.append("WHERE project_id = ?                   ");

        Map map;
        try {
            map = db.queryForMap(sql.toString(), project_id);
        }catch(NullPointerException np){
            map = null;
        }
        return map;
    }

    public int removeByToken(String token){
        Object[] parm = {token};
        String sql = "delete from result where token = ?";
        return db.update(sql, token);
    }

}
