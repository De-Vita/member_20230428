<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>memberMain.jsp</h2>
    <h2>${result.memberName}님 안녕하세요</h2>
    <a href="/member?id=${result.id}">상세 조회</a>
</body>
</html>
