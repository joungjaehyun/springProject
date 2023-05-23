<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2023-05-18
  Time: 오후 5:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Board Write</title>
</head>
<body>

    <h1>Write contents</h1>
    <hr>
    ${loginInfo}
    <hr>
      <form method="post" enctype="multipart/form-data">
        <table>
            <%--
                회원만 작성가능한 게시판으로 변경 -> 삭제
            <tr>
                  <td>Writer</td>
                  <td><input type="hidden" name="writer"  required ></td>
            </tr>--%>
            <input type="hidden" name="memidx" value="${loginInfo.idx}">
            <tr>
                <td>Title</td>
                <td><input type="text" name="title" required></td>
            </tr>
            <tr>
                    <td>Content</td>
                    <td>
                        <textarea name="content" cols="20" rows="5" required></textarea>
                    </td>
            </tr>
            <tr>
                <td>Attach File(Image)</td>
                <td><input type="file" name="file"> </td>
            </tr>
            <tr>
                <td></td>
              <td><input type="reset" value="reset"><input type="submit" value="regist"></td>

            </tr>

        </table>

      </form>
</body>
</html>
