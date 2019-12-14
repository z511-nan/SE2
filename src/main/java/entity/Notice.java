package entity;

import java.sql.Date;

public class Notice {
    private int id;
    private Date date;
    private String info;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public Notice(int id, Date date, String info) {
        this.id = id;
        this.date = date;
        this.info = info;
    }
}
