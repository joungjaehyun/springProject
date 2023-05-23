<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2023-05-19
  Time: 오전 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>ReadPage</title>
    <style>
        td{
            padding: 10px 20px;
        }
    </style>
</head>
<body>
      <h1>Read Article</h1>
        <hr>
      ${loginInfo}
        <hr>
            <table border="1">
                <tr>
                    <td>Board Number</td>
                    <td>${article.bno}</td>

                </tr>
                <tr>
                    <td>Title</td>
                    <td>${article.title}</td>
                </tr>
                <tr>
                    <td>Content</td>
                    <td>${article.content}</td>
                </tr>
                <tr>
                    <td>Writer</td>
                    <td>${article.writer}</td>
                </tr>
                <c:if test="${article.file ne null}">
                <tr>
                    <td>Attached File<br>(Image)</td>
                    <td><img src="/uploadfile/board/${article.file}" width="100"></td>
                </tr>
                </c:if>
                <tr>
                    <td>Regist Date</td>
                    <td>${article.regdate}</td>
                </tr>
                <tr>
                    <td>Update Date</td>
                    <td>${article.updatedate}</td>
                </tr>
            </table>
      <a href="/board/list">LIST</a>


      <c:if test="${loginInfo.idx eq article.memidx}">
      <a href="/board/modify?bno=${article.bno}">Modify</a>
      <a href="/board/delete?bno=${article.bno}">Delete</a>
      </c:if>
</body>
</html>
