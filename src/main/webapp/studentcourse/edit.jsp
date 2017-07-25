<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
<head>
    <meta charset="UTF-8" />
    <title>studentCourse edit page</title>
</head>
<body>
<h1>EDIT StudentCourse</h1>
<form action="${ctx}/studentcourse/modify" method="post">
    <input type="hidden" name="id" value="${sessionScope.studentcourse.id}">
STUDENTID: <input name="studentId" value="${sessionScope.studentcourse.studentId}"><br>
COURSEID: <input name="courseId" value="${sessionScope.studentcourse.courseId}"><br>
    <input type="submit" value="SAVE">
</form>
</body>
</html>