DROP DATABASE IF EXISTS db_sc;
CREATE DATABASE db_sc;

DROP TABLE IF EXISTS db_sc.student;
CREATE TABLE db_sc.student (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  name   VARCHAR(255) NOT NULL
  COMMENT '姓名',
  gender VARCHAR(255) NOT NULL
  COMMENT '性别'
)
  COMMENT '学生表';

DROP TABLE IF EXISTS db_sc.course;
CREATE TABLE db_sc.course (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  title  VARCHAR(255) NOT NULL
  COMMENT '课程名称',
  credit INT          NOT NULL
  COMMENT '学分'
)
  COMMENT '课程表';

DROP TABLE IF EXISTS db_sc.student_course;
CREATE TABLE db_sc.student_course (
  id        INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  studentId INT COMMENT '学生 ID',
  courseId  INT COMMENT '课程 ID'
)
  COMMENT '学生—课程关联表';

ALTER TABLE db_sc.student_course
  ADD CONSTRAINT
  fk_student_course_studentId
FOREIGN KEY (studentId)
REFERENCES db_sc.student (id);

ALTER TABLE db_sc.student_course
  ADD CONSTRAINT
  fk_student_course_courseId
FOREIGN KEY (courseId)
REFERENCES db_sc.course (id);

SELECT *
FROM db_sc.student;

SELECT *
FROM db_sc.course;

SELECT *
FROM db_sc.student_course;

SELECT
  s.name,
  c.title
FROM db_sc.student s INNER JOIN db_sc.course c
  INNER JOIN db_sc.student_course sc
    ON s.id = sc.studentId AND c.id = sc.courseId
WHERE s.id = 1;