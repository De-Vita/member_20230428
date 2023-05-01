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
    <form action="/update" method="post">
        <input type="text" name="id" value="${member.id}" readonly> <br>
        <input type="text" name="memberEmail" value="${member.memberEmail}"> <br>
        <input type="text" name="memberPassword" value="${member.memberPassword}"> <br>
        <input type="text" name="memberName" value="${member.memberName}"> <br>
        <input type="text" name="memberBirth" value="${member.memberBirth}"> <br>
        <input type="text" name="memberMobile" value="${member.memberMobile}"> <br>
        <input type="submit" value="수정">
    </form>
</body>
</html>
