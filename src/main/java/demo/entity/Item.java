package demo.entity;

public class Item {
    private String name;
    private int s1;
    private int s2;
    private int s3;
    private int s4;
    private int s5;
    private int s6;
    private double total;

    public Item(){};

    public Item(String name, int s1, int s2, int s3, int s4, int s5, int s6) {
        this.name = name;
        this.s1 = s1;
        this.s2 = s2;
        this.s3 = s3;
        this.s4 = s4;
        this.s5 = s5;
        this.s6 = s6;
        this.total = (s1 * 1.5
                + s2 * 1.5
                + s3 * 1.5
                + s4 * 1.5
                + s5 * 1.5
                + s6 * 2.5) * 100 * (0.2) * (0.1);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getS1() {
        return s1;
    }

    public void setS1(int s1) {
        this.s1 = s1;
    }

    public int getS2() {
        return s2;
    }

    public void setS2(int s2) {
        this.s2 = s2;
    }

    public int getS3() {
        return s3;
    }

    public void setS3(int s3) {
        this.s3 = s3;
    }

    public int getS4() {
        return s4;
    }

    public void setS4(int s4) {
        this.s4 = s4;
    }

    public int getS5() {
        return s5;
    }

    public void setS5(int s5) {
        this.s5 = s5;
    }

    public int getS6() {
        return s6;
    }

    public void setS6(int s6) {
        this.s6 = s6;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Item{");
        sb.append(", name='").append(name).append('\'');
        sb.append(", s1=").append(s1);
        sb.append(", s2=").append(s2);
        sb.append(", s3=").append(s3);
        sb.append(", s4=").append(s4);
        sb.append(", s5=").append(s5);
        sb.append(", s6=").append(s6);
        sb.append(", total=").append(total);
        sb.append('}');
        return sb.toString();
    }
}
