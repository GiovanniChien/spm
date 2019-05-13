package cn.edu.njnu.pojo;

import java.io.Serializable;
import java.util.Date;

public class message implements Serializable {

    private Integer id;
    private User user;//foreign key from user id
    private String context;//留言内容
    private Date time;//留言时间

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
