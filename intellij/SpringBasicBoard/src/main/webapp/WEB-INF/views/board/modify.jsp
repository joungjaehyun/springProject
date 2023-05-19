<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2023-05-19
  Time: 오후 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Modify</title>
    <style>
        td{
            padding: 10px 20px;
        }

    </style>
</head>
<body>
        <h1>Modify Stuff</h1>
        <hr>
        <form method="post" enctype="multipart/form-data">
            <input type="hidden" name="bno" value="${board.bno}">
            <!--
            새로운 파일을 업로드 할 수 있다!!!
            이전에 업로드한 파일이 있을 수 있다
            -->
            <table border="1">
                <tr>
                    <td>Title</td>
                    <td><input type="text" name="title" value="${board.title}"></td>
                </tr>
                <tr>
                    <td>Content</td>
                    <td><textarea name="content" rows="4" cols="20">${board.content}</textarea></td>
                </tr>
                <tr>
                    <td>Writer</td>
                    <td><input type="text" name="writer" value="${board.writer}"></td>
                </tr>
                <tr>
                    <td>Attached File(Image)</td>
                    <td>
                        <c:if test="${board.file ne null}">
                        <input type="hidden" name="oldfile" value="${board.file}">
                         ${board.file}
                        </c:if>

                    </td>


                </tr>
                <tr>
                    <td>New Attach File(Image)</td>
                    <td><input type="file" name="file"></td>
                </tr>
                <tr>
                    <td>Modify</td>
                    <td>
                        <input type="reset">
                        <input type="submit">
                    </td>
                </tr>
            </table>
        </form>

</body>
</html>
