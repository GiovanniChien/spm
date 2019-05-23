package cn.edu.njnu.controller;

import cn.edu.njnu.pojo.Course;
import cn.edu.njnu.pojo.User;
import cn.edu.njnu.service.CourseService;
import cn.edu.njnu.vo.LoginResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class CourseController {

    @Autowired
    CourseService courseService;

    @RequestMapping("/course")
    public String intoCourse(HttpSession session){
        LoginResult result = (LoginResult) session.getAttribute("loginResult");
        if(result.getCourse()==null){
            //未选课,跳转至选课界面
            return "student/selectCourse";
        }
        return "student";
    }

    @RequestMapping("/selectCourse")
    public String selectCourse(HttpServletRequest request,HttpSession session){
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        LoginResult result = (LoginResult) session.getAttribute("loginResult");
        Course course = new Course(null,new User(result.getUserId(),null,null,null),
                email,phone,0,null,null,null,null,null);
        Course tmpCourse = courseService.selectCourse(course);
        result.setCourse(tmpCourse);
        result.setCourseStatus("等待任课老师确认");
        session.setAttribute("loginResult",result);
        return "class";
    }

}
