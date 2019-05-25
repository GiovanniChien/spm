package cn.edu.njnu.controller;

import cn.edu.njnu.pojo.Course;
import cn.edu.njnu.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/grade")
public class GradeController {

    @Autowired
    GradeService service;

    @RequestMapping("/show_import")
    public String showImportGrade() {
        return "grade/grade_import";
    }

    @RequestMapping("/import")
    public String importGrade(MultipartFile file, HttpSession session) {
        List<Course> courseList = service.importGrade(file);
        session.setAttribute("courses", courseList);
        return "grade/grade_import";
    }

    @RequestMapping("/update_import")
    public String updateImportGrade(Integer id, HttpSession session, Model model) {
        List<Course> courses = (List<Course>) session.getAttribute("courses");
        Course course = service.getCourseInList(id, courses);
        model.addAttribute("course", course);
        model.addAttribute("jumpUrl", "grade/submit_update_import");
        return "grade/grade_update";
    }

    @RequestMapping("/submit_update_import")
    public String submitUpdateImport(Course course, HttpSession session) {
        List<Course> courses = (List<Course>) session.getAttribute("courses");
        Course courseInList = service.getCourseInList(course.getId(), courses);
        courseInList.setDailyGrade(course.getDailyGrade());
        courseInList.setMidGrade(course.getMidGrade());
        courseInList.setFinalGrade(course.getFinalGrade());
        courseInList.setPracticeGrade(course.getPracticeGrade());
        return "grade/grade_import";
    }

    @RequestMapping("/submit_update")
    public String submitUpdate(Course course, Model model) {
        service.updateCourse(course);
        model.addAttribute("courses", service.getAllCourses());
        return "grade/grade_show";
    }


    @RequestMapping("/submit_import")
    public String submitImport(HttpSession session) {
        List<Course> courses = (List<Course>) session.getAttribute("courses");
        service.updateImportCourses(courses);
        session.removeAttribute("courses");
        return "grade/grade_import";
    }

    @RequestMapping("/show")
    public String showAll(Model model) {
        List<Course> courses = service.getAllCourses();
        model.addAttribute("courses", courses);
        return "grade/grade_show";
    }

    @RequestMapping("/update")
    public String update(Integer id, Model model) {
        model.addAttribute("jumpUrl", "grade/submit_update");
        Course course = service.getCourseById(id);
        model.addAttribute("course", course);
        return "grade/grade_update";
    }

    @RequestMapping("/notice_list")
    public String noticeList(Model model) {
        List<Course> courses = service.getAllFailed();
        model.addAttribute("courses", courses);
        return "grade/grade_notice";
    }

    @RequestMapping("/notice")
    public String noticeStudent(HttpServletRequest request, Model model) {
        String[] selecteds = request.getParameterValues("selected");
        List<Course> noticedCourse = service.getNoticedCourses(selecteds);
        try {
            service.notice(noticedCourse);
            model.addAttribute("msg", "发送成功");
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "发送失败");
        }
        model.addAttribute("courses", service.getAllFailed());
        return "grade/grade_notice";
    }


}
