package cn.edu.njnu.dao;

import cn.edu.njnu.pojo.Course;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public interface CourseMapper {

    Course queryCourseInfoByUserId(Integer userId);

    @Transactional
    void insertCourse(Course course);

    @Transactional
    void updateDailyGrade(Course course);
}
