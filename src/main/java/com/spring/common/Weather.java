package com.spring.common;

import java.util.Date;

public class Weather {

    private String MangName;
    private Date dataTime;
    private double so2Value;
    private double coValue;



    public String getMangName() {
        return MangName;
    }

    public void setMangName(String mangName) {
        MangName = mangName;
    }

    public Date getDataTime() {
        return dataTime;
    }

    public void setDataTime(Date dataTime) {
        this.dataTime = dataTime;
    }

    public double getSo2Value() {
        return so2Value;
    }

    public void setSo2Value(double so2Value) {
        this.so2Value = so2Value;
    }

    public double getCoValue() {
        return coValue;
    }

    public void setCoValue(double coValue) {
        this.coValue = coValue;
    }

    @Override
    public String toString() {
        return "Weather{" +
                "MangName='" + MangName + '\'' +
                ", dataTime=" + dataTime +
                ", so2Value=" + so2Value +
                ", coValue=" + coValue +
                '}';
    }
}
