package com.myth.controller;

import com.myth.service.impl.CourseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CourseController {
    @Autowired
    private CourseServiceImpl courseServicel;

    @RequestMapping(value = "/index.html")
    public ModelAndView getAllCourse(HttpServletRequest request) {
        request.setAttribute("courseList", courseServicel.getAllCourse());
        return new ModelAndView("course_list");
    }
}
