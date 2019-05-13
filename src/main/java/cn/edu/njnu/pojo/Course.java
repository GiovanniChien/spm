package cn.edu.njnu.pojo;

import java.io.Serializable;

public class Course implements Serializable {

    private Integer id;
    private User user;//foreign key from user id

    private String email;
    private String telno;//电话号码
    private Integer status;//选课状态

    private Float dailyGrade;//平时分
    private Float midGrade;//期中成绩
    private Float finalGrade;//期末成绩
    private Float practiceGrade;//在线测试成绩
    private Float totalGrade;//总成绩,计算得到

    public Integer getId() {
        return id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelno() {
        return telno;
    }

    public void setTelno(String telno) {
        this.telno = telno;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Float getDailyGrade() {
        return dailyGrade;
    }

    public void setDailyGrade(Float dailyGrade) {
        this.dailyGrade = dailyGrade;
    }

    public Float getMidGrade() {
        return midGrade;
    }

    public void setMidGrade(Float midGrade) {
        this.midGrade = midGrade;
    }

    public Float getFinalGrade() {
        return finalGrade;
    }

    public void setFinalGrade(Float finalGrade) {
        this.finalGrade = finalGrade;
    }

    public Float getPracticeGrade() {
        return practiceGrade;
    }

    public void setPracticeGrade(Float practiceGrade) {
        this.practiceGrade = practiceGrade;
    }

    public Float getTotalGrade() {
        return totalGrade;
    }

    public void setTotalGrade(Float totalGrade) {
        this.totalGrade = totalGrade;
    }
}
