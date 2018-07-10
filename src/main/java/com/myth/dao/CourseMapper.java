package com.myth.dao;

import com.myth.pojo.Course;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CourseMapper {
    int deleteByPrimaryKey(Integer nCourseId);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectByPrimaryKey(Integer nCourseId);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);

    List<Course> getAllCourse();
}