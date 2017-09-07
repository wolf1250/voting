package hello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class ProjectDAO {

    @Autowired
    private JdbcTemplate db;

    public List<Project> getAllProjectInfo() {
        List<Project> rv = new ArrayList<Project>();
        List<Map<String, Object>> res = db.queryForList("select * from project");
        for (Map<String, Object> item : res) {
            rv.add(new Project(item));
        }

        return rv;

    }
}
