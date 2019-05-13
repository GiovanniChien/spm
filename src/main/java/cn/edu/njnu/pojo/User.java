package cn.edu.njnu.pojo;

import java.io.Serializable;

public class User implements Serializable {

    private Integer id;
    private String username;
    private String password;

    private Integer power;

    public Integer getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getPower() {
        return power;
    }

    public void setPower(Integer power) {
        this.power = power;
    }
}
