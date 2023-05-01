<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        const result = ${result};
        if (result > 0) {
            alert("회원가입 성공");
        } else {
            alert("회원가입 실패");
        }
    </script>
</head>
<body>
<form action="/login" method="post">
    <div><input type="text" name="memberEmail" placeholder="이메일"></div>
    <div><input type="text" name="memberPassword" placeholder="비밀번호"></div>
    <div><input type="submit" value="로그인"></div>
</form>
</body>
</html>
