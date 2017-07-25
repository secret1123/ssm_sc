<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
<head>
    <meta charset="UTF-8" />
    <title>student edit page</title>
</head>
<body>
<h1>EDIT Student</h1>
<form action="${ctx}/student/modify" method="post">
    <input type="hidden" name="id" value="${sessionScope.student.id}">
NAME: <input name="name" value="${sessionScope.student.name}"><br>
GENDER: <input name="gender" value="${sessionScope.student.gender}"><br>
    <input type="submit" value="SAVE">
</form>
</body>
</html>