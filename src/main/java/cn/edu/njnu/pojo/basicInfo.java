package cn.edu.njnu.pojo;

import java.io.Serializable;

public class basicInfo implements Serializable {

    private Integer id;
    private String key;
    private String content;

    public Integer getId() {
        return id;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
