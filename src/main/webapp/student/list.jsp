<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
<head>
    <meta charset="UTF-8" />
    <title>student list page</title>
    <script>
        function del() { return confirm('REMOVE?'); }
    </script>
</head>
<body>
<c:import url="add.jsp"/>
<hr/>
<h1>LIST Student</h1>
<hr/>
<table border="1">
    <tr>
        <th>INDEX</th>
        <th>NAME</th>
        <th>GENDER</th>
        <th colspan="2">OPERATION</th>
    </tr>
    <c:forEach var="student" items="${sessionScope.pagination.list}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${student.name}</td>
            <td>${student.gender}</td>
            <td><a href="${ctx}/student/queryById/${student.id}">EDIT</a></td>
            <td><a class="delete" href="${ctx }/student/remove/${student.id}" onclick="return del()">REMOVE</a></td>
        </tr>
    </c:forEach>
</table>
<c:import url="${ctx}/commons/page.jsp">
    <c:param name="path" value="student/${sessionScope.pagination.statement}"/>
</c:import>
</body>
</html>