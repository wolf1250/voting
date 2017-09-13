package demo.hello;

import java.text.DecimalFormat;

public class Score {
    private double  content;

    public Score(){}

    public Score(double content){
        this.content = content;
    }

    public String getContent() {
        DecimalFormat df=new DecimalFormat("#.#");
        return df.format(content);
    }


}
