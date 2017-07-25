<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
<head>
    <meta charset="UTF-8" />
    <title>studentCourse add page</title>
</head>
<body>
<h1>ADD StudentCourse</h1>
<form action="${ctx}/studentcourse/create" method="post">
    <input name="studentId" placeholder="STUDENTID"><br>
    <input name="courseId" placeholder="COURSEID"><br>
    <input type="submit" value="ADD">
</form>
</body>
</html>