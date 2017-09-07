package hello;

import java.util.Map;

public class Project {

    private int id;
    private String name;

    public Project(){}

    public Project(Map<String, Object> data){
        this.id = (Integer)(data.get("id"));
        this.name = (String)(data.get("name"));
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Project{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
