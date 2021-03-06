package com.spring.dto;

import java.util.Date;

public class Member {
    private String username;
    private String userId;
    private String userpw;
    private String tel;

    private String postno;
    private String addr;
    private String addr_detail;

    private Date rdate;
    private Date udatedate;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }


    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserpw() {
        return userpw;
    }

    public void setUserpw(String userpw) {
        this.userpw = userpw;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getPostno() {
        return postno;
    }

    public void setPostno(String postno) {
        this.postno = postno;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getAddr_detail() {
        return addr_detail;
    }

    public void setAddr_detail(String addr_detail) {
        this.addr_detail = addr_detail;
    }

    public Date getRdate() {
        return rdate;
    }

    public void setRdate(Date rdate) {
        this.rdate = rdate;
    }

    public Date getUdatedate() {
        return udatedate;
    }

    public void setUdatedate(Date udatedate) {
        this.udatedate = udatedate;
    }

    @Override
    public String toString() {
        return "Member{" +
                "username='" + username + '\'' +
                ", userId='" + userId + '\'' +
                ", userpw=" + userpw +
                ", tel='" + tel + '\'' +
                ", postno='" + postno + '\'' +
                ", addr='" + addr + '\'' +
                ", addr_detail='" + addr_detail + '\'' +
                ", rdate=" + rdate +
                ", udatedate=" + udatedate +
                '}';
    }
}
