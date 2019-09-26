package com.spring.dto;

import org.apache.ibatis.type.Alias;

import java.util.Date;

@Alias("Notice")
public class Notice {
    private int idx;
    private String title;
    private String writer;
    private Date regdata;
    private String content;

    public int getIdx() {
        return idx;
    }

    public void setIdx(int idx) {
        this.idx = idx;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public Date getRegdata() {
        return regdata;
    }

    public void setRegdata(Date regdata) {
        this.regdata = regdata;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Notice{" +
                "idx=" + idx +
                ", title='" + title + '\'' +
                ", writer='" + writer + '\'' +
                ", regdata=" + regdata +
                ", content='" + content + '\'' +
                '}';
    }
}
