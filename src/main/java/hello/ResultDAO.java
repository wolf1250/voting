package hello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class ResultDAO {

    @Autowired
    private JdbcTemplate db;

    public int create(Result result){
        Object[] parm = result.getObjectArray();
        return db.update("insert into result (project_id, key_business, priority, modified) values (?,?,?,?)", parm);
    }

}
