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
<h2>detail.jsp</h2>
<table style="text-align: center">
    <tr>
        <th>id</th>
        <th>memberEmail</th>
        <th>memberPassword</th>
        <th>memberName</th>
        <th>memberBirth</th>
        <th>memberMobile</th>
        <th>수정</th>
    </tr>
    <tr>
        <td>${memberDetail.id}</td>
        <td>${memberDetail.memberEmail}</td>
        <td>${memberDetail.memberPassword}</td>
        <td>${memberDetail.memberName}</td>
        <td>${memberDetail.memberBirth}</td>
        <td>${memberDetail.memberMobile}</td>
        <td><button onclick="update_info(${memberDetail.id})">수정</button></td>
    </tr>
</table>
</body>
<script>
    const update_info = (id) => {
      location.href = "/update?id="+id;
    }
</script>
</html>
