<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>memberList.jsp</h2>
    <table style="text-align: center">
        <tr>
            <th>id</th>
            <th>email</th>
<%--            <th>password</th>--%>
            <th>name</th>
<%--            <th>birth</th>--%>
<%--            <th>mobile</th>--%>
        </tr>
        <%-- items: 반복할 대상, var: 반복변수 --%>
        <%-- for(StudentDTO s: studentList) --%>
        <c:forEach items="${memberList}" var="member">
            <tr>
                <td>${member.id}</td>
                <td>${member.memberEmail}</td>
<%--                <td>${member.memberPassword}</td>--%>
                <td>${member.memberName}</td>
<%--                <td>${member.memberBirth}</td>--%>
<%--                <td>${member.memberMobile}</td>--%>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
