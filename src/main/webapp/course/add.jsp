<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
<head>
    <meta charset="UTF-8" />
    <title>course add page</title>
</head>
<body>
<h1>ADD Course</h1>
<form action="${ctx}/course/create" method="post">
    <input name="title" placeholder="TITLE"><br>
    <input name="credit" placeholder="CREDIT"><br>
    <input type="submit" value="ADD">
</form>
</body>
</html>