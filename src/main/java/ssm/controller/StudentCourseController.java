package ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import ssm.model.StudentCourse;
import ssm.service.StudentCourseService;

@Controller
@RequestMapping("studentcourse")
public class StudentCourseController extends BaseController {

private final StudentCourseService studentcourseService;

@Autowired
public StudentCourseController(StudentCourseService studentcourseService) {
this.studentcourseService = studentcourseService;
}

@RequestMapping("create")
private String create(StudentCourse studentcourse) {
studentcourseService.create(studentcourse);
return "redirect:/studentcourse/queryAll";
}

@RequestMapping("remove/{id}")
private String remove(@PathVariable("id") Integer id) {
studentcourseService.remove(id);
return "redirect:/studentcourse/queryAll";
}

@RequestMapping("modify")
private String modify(StudentCourse studentcourse) {
studentcourseService.modify(studentcourse);
return "redirect:/studentcourse/queryAll";
}

@RequestMapping("queryAll/{page}")
private String queryAll(@PathVariable int page) {
session.setAttribute("pagination", studentcourseService.queryAll(page));
return "redirect:/studentcourse/list.jsp";
}

@RequestMapping("queryAll")
private String queryAll() {
return queryAll(1);
}

@RequestMapping("queryById/{id}")
private String queryById(@PathVariable("id") Integer id) {
session.setAttribute("studentcourse", studentcourseService.queryById(id));
return "redirect:/studentcourse/edit.jsp";
}
}