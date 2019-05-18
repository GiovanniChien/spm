package cn.edu.njnu.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginResult {

    private String username;
    private Integer power;
    private String type;
    private String msg;
    private String CourseStatus;

}
