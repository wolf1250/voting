package demo.hello;

import java.sql.Timestamp;

public class Result {

    private int id;
    private int projectID;
    private String token;
    private double keyBusiness;
    private double priority;
    private Timestamp modified;
    private String userAgent;
    private String ip;

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

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public double getKeyBusiness() {
        return keyBusiness;
    }

    public void setKeyBusiness(double keyBusiness) {
        this.keyBusiness = keyBusiness;
    }

    public double getPriority() {
        return priority;
    }

    public void setPriority(double priority) {
        this.priority = priority;
    }

    public Timestamp getModified() {
        return modified;
    }

    public void setModified(Timestamp modified) {
        this.modified = modified;
    }

    public String getUserAgent() {
        return userAgent;
    }

    public void setUserAgent(String userAgent) {
        this.userAgent = userAgent;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Object[] getObjectArray() {
        Object[] rv = {this.projectID, this.token, this.keyBusiness, this.priority, this.modified, this.ip, this.userAgent};
        return rv;
    }

    @Override
    public String toString() {
        return "Result{" +
                "id=" + id +
                ", projectID=" + projectID +
                ", token='" + token + '\'' +
                ", keyBusiness=" + keyBusiness +
                ", priority=" + priority +
                ", modified=" + modified +
                ", userAgent='" + userAgent + '\'' +
                ", ip='" + ip + '\'' +
                '}';
    }
}
