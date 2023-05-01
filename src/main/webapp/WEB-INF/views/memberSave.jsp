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
    <form action="/save" method="post" name="saveForm">
        <input type="text" name="memberEmail" placeholder="이메일" required> <br>
        <input type="text" name="memberPassword" placeholder="비밀번호" id="member_password" required> <br>
        <input type="text" name="memberName" placeholder="이름" required> <br>
        <input type="text" name="memberBirth" placeholder="생년월일" required> <br>
        <input type="text" name="memberMobile" placeholder="전화번호" required> <br>
        <input type="button" onclick="password_check()" value="가입">
    </form>
</body>
<script>
    const password_check = () => {
      const memberPassword = document.getElementById("member_password");
      const exp = /^(?=.*[a-z])(?=.*[0-9])(?=.*[!#$%])[a-z0-9!#$%]{8,16}$/;
        if (memberPassword.value !== exp) {
            alert("비밀번호를 다시 입력해주세요");
            memberPassword.focus();
        } else {
            document.saveForm.submit();
        }
    }
</script>
</html>
