<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2023-05-22
  Time: 오후 4:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>로그인 (Login)</h1>
    <hr>
    <form method="post">
      <table>
        <tr>
          <td>아이디 (ID)</td>
          <td><input type="text" name="uid"></td>
        </tr>
        <tr>
          <td>비밀번호 (PW)</td>
          <td><input type="password" name="pw"></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="reset" VALUE="초기화"> <input type="submit" value="로그인"></td>
        </tr>
      </table>

    </form>
</body>
</html>
