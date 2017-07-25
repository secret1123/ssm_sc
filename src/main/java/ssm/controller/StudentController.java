package ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import ssm.model.Student;
import ssm.service.StudentService;

@Controller
@RequestMapping("student")
public class StudentController extends BaseController {

private final StudentService studentService;

@Autowired
public StudentController(StudentService studentService) {
this.studentService = studentService;
}

@RequestMapping("create")
private String create(Student student) {
studentService.create(student);
return "redirect:/student/queryAll";
}

@RequestMapping("remove/{id}")
private String remove(@PathVariable("id") Integer id) {
studentService.remove(id);
return "redirect:/student/queryAll";
}

@RequestMapping("modify")
private String modify(Student student) {
studentService.modify(student);
return "redirect:/student/queryAll";
}

@RequestMapping("queryAll/{page}")
private String queryAll(@PathVariable int page) {
session.setAttribute("pagination", studentService.queryAll(page));
return "redirect:/student/list.jsp";
}

@RequestMapping("queryAll")
private String queryAll() {
return queryAll(1);
}

@RequestMapping("queryById/{id}")
private String queryById(@PathVariable("id") Integer id) {
session.setAttribute("student", studentService.queryById(id));
return "redirect:/student/edit.jsp";
}
}