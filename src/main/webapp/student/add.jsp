<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
<head>
    <meta charset="UTF-8" />
    <title>student add page</title>
</head>
<body>
<h1>ADD Student</h1>
<form action="${ctx}/student/create" method="post">
    <input name="name" placeholder="NAME"><br>
    <input name="gender" placeholder="GENDER"><br>
    <input type="submit" value="ADD">
</form>
</body>
</html>