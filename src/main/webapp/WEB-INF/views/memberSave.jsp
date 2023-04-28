<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>memberSave</h2>
    <form action="/save" method="post">
        <input type="text" name="memberEmail" placeholder="이메일"> <br>
        <input type="text" name="memberPassword" placeholder="비밀번호"> <br>
        <input type="text" name="memberName" placeholder="이름"> <br>
        <input type="text" name="memberBirth" placeholder="생년월일"> <br>
        <input type="text" name="memberMobile" placeholder="전화번호"> <br>
        <input type="submit" value="가입">
    </form>
</body>
</html>
