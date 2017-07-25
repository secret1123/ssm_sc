package ssm.dao.impl;

import ssm.model.Student;
import ssm.dao.StudentDao;

import org.springframework.stereotype.Repository;

@Repository
public class StudentDaoImpl extends GenericDaoImpl<Student, Integer> implements StudentDao {
}