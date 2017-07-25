<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
<head>
    <meta charset="UTF-8" />
    <title>course list page</title>
    <script>
        function del() { return confirm('REMOVE?'); }
    </script>
</head>
<body>
<c:import url="add.jsp"/>
<hr/>
<h1>LIST Course</h1>
<hr/>
<table border="1">
    <tr>
        <th>INDEX</th>
        <th>TITLE</th>
        <th>CREDIT</th>
        <th colspan="2">OPERATION</th>
    </tr>
    <c:forEach var="course" items="${sessionScope.pagination.list}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${course.title}</td>
            <td>${course.credit}</td>
            <td><a href="${ctx}/course/queryById/${course.id}">EDIT</a></td>
            <td><a class="delete" href="${ctx }/course/remove/${course.id}" onclick="return del()">REMOVE</a></td>
        </tr>
    </c:forEach>
</table>
<c:import url="${ctx}/commons/page.jsp">
    <c:param name="path" value="course/${sessionScope.pagination.statement}"/>
</c:import>
</body>
</html>