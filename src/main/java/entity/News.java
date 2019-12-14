package com.entity;

import java.util.Date;

public class News {
    private int id;
    private String title;
    private String content;
    private Date inserttime;

    public News(int id, String content, Date insertTime) {
        this.id = id;
        this.content = content;
        this.inserttime = insertTime;
    }

    public News() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getInserttime() {
        return inserttime;
    }

    public void setInserttime(Date inserttime) {
        this.inserttime = inserttime;
    }
}
