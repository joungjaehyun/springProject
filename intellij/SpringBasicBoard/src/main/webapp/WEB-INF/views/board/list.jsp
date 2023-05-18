<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2023-05-18
  Time: 오후 5:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Board Page</title>
    <style>
        td, th{
            padding: 15px;
        }
    </style>
</head>
<body>
    <h1>Board </h1>
    <hr>
    <table border="1">
        <tr>
            <th>Number</th>
            <th>Title</th>
            <th>Writer</th>
            <th>Post Date</th>
        </tr>
        <c:forEach items="${list}" var="board">
        <tr>
            <td>${board.bno}</td>
            <td><a href="/board/read?bno=${board.bno}">${board.title}</a></td>
            <td>${board.writer}</td>
            <td>${board.regdate}</td>
        </tr>
        </c:forEach>
    </table>

    <a href="/board/write">Write</a>
</body>
</html>
