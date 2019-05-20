package cn.edu.njnu.controller;

import cn.edu.njnu.vo.LoginResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class CourseController {

    @RequestMapping("/course")
    public String selectCourse(HttpSession session){
        LoginResult result = (LoginResult) session.getAttribute("loginResult");
        if(result.getCourse()==null){
            //未选课,跳转至选课界面
            return "selectCourse";
        }
        return "student";
    }

}
