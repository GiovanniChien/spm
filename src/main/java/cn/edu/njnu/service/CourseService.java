package cn.edu.njnu.service;

import cn.edu.njnu.dao.CourseMapper;
import cn.edu.njnu.pojo.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CourseService {

    @Autowired
    CourseMapper courseDao;

    public Course selectCourse(Course course) {
        courseDao.insertCourse(course);
        return courseDao.queryCourseInfoByUserId(course.getUser().getId());
    }

}
