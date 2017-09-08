package demo.hello;

public class SubmitResult {

    private String result;

    public SubmitResult(){}

    public SubmitResult(int dbResult){
        this.result = dbResult < 1 ? "false": "success";
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    @Override
    public String toString() {
        return "SubmitResult{" +
                "result='" + result + '\'' +
                '}';
    }
}
