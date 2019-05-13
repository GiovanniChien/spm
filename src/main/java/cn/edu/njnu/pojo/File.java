package cn.edu.njnu.pojo;

import java.io.Serializable;
import java.util.Date;

public class File implements Serializable {

    private Integer id;

    private String filename;//随机文件名,UUID生成防止重名
    private String realname;//真正的文件名
    private String path;//路径名

    private Date time;//修改时间,mysql用timestamp存,Java用date

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
