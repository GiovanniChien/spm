package cn.edu.njnu.dao;

import cn.edu.njnu.pojo.Course;
import org.springframework.stereotype.Component;

@Component
public interface CourseMapper {

    Course queryCourseInfoByUserId(Integer userId);

}
