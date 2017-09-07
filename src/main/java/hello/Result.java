package hello;

import java.sql.Timestamp;

public class Result {

    private int id;
    private int projectID;
    private int keyBusiness;
    private int priority;
    private Timestamp modified;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProjectID() {
        return projectID;
    }

    public void setProjectID(int projectID) {
        this.projectID = projectID;
    }

    public int getKeyBusiness() {
        return keyBusiness;
    }

    public void setKeyBusiness(int keyBusiness) {
        this.keyBusiness = keyBusiness;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public Timestamp getModified() {
        return modified;
    }

    public void setModified(Timestamp modified) {
        this.modified = modified;
    }

    public Object[] getObjectArray(){
        Object[] rv =  {this.projectID, this.keyBusiness, this.priority, this.modified};
        return rv;
    }

    @Override
    public String toString() {
        return "Result{" +
                "id=" + id +
                ", projectID=" + projectID +
                ", keyBusiness=" + keyBusiness +
                ", priority=" + priority +
                ", modified=" + modified +
                '}';
    }
}
