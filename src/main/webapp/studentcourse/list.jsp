<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
<head>
    <meta charset="UTF-8" />
    <title>studentCourse list page</title>
    <script>
        function del() { return confirm('REMOVE?'); }
    </script>
</head>
<body>
<c:import url="add.jsp"/>
<hr/>
<h1>LIST StudentCourse</h1>
<hr/>
<table border="1">
    <tr>
        <th>INDEX</th>
        <th>STUDENTID</th>
        <th>COURSEID</th>
        <th colspan="2">OPERATION</th>
    </tr>
    <c:forEach var="studentcourse" items="${sessionScope.pagination.list}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${studentcourse.studentId}</td>
            <td>${studentcourse.courseId}</td>
            <td><a href="${ctx}/studentcourse/queryById/${studentcourse.id}">EDIT</a></td>
            <td><a class="delete" href="${ctx }/studentcourse/remove/${studentcourse.id}" onclick="return del()">REMOVE</a></td>
        </tr>
    </c:forEach>
</table>
<c:import url="${ctx}/commons/page.jsp">
    <c:param name="path" value="studentcourse/${sessionScope.pagination.statement}"/>
</c:import>
</body>
</html>