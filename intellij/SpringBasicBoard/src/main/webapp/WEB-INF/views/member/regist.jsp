<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2023-05-22
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원등록 (Regist Member)</title>
</head>
<body>

      <h1>회원 가입 (Sign Up Member)</h1>
      <hr>
      <form method="post" enctype="multipart/form-data">
        <table border="1">
          <tr>
              <td>아이디(ID)</td>
              <td><input type="text" name="uid"></td>
          </tr>
          <tr>
            <td>비밀번호(Password)</td>
            <td><input type="password" name="pw"></td>
          </tr>
          <tr>
            <td>이름(User name)</td>
            <td><input type="text" name="uname"></td>
          </tr>
          <tr>
            <td>사진 (Profile photo)</td>
            <td><input type="file" name="uphoto"></td>
          </tr>
          <tr>
            <td></td>
        <td>
          <input type="reset" value="Reset">
          <input type="submit" value="Regist"></td>
          </tr>

        </table>
      </form>

</body>
</html>
