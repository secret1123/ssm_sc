package ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import ssm.model.Course;
import ssm.service.CourseService;

@Controller
@RequestMapping("course")
public class CourseController extends BaseController {

private final CourseService courseService;

@Autowired
public CourseController(CourseService courseService) {
this.courseService = courseService;
}

@RequestMapping("create")
private String create(Course course) {
courseService.create(course);
return "redirect:/course/queryAll";
}

@RequestMapping("remove/{id}")
private String remove(@PathVariable("id") Integer id) {
courseService.remove(id);
return "redirect:/course/queryAll";
}

@RequestMapping("modify")
private String modify(Course course) {
courseService.modify(course);
return "redirect:/course/queryAll";
}

@RequestMapping("queryAll/{page}")
private String queryAll(@PathVariable int page) {
session.setAttribute("pagination", courseService.queryAll(page));
return "redirect:/course/list.jsp";
}

@RequestMapping("queryAll")
private String queryAll() {
return queryAll(1);
}

@RequestMapping("queryById/{id}")
private String queryById(@PathVariable("id") Integer id) {
session.setAttribute("course", courseService.queryById(id));
return "redirect:/course/edit.jsp";
}
}