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

    <div>
        로그인 정보 : ${loginInfo}
        <a href="/logout">logout</a>
    </div>
    <hr>

    <div class="searchArea">
        <form>
        <select name="searchType">
            <option value="title">Title</option>
            <option value="content">Content</option>
            <option value="writer">Writer</option>
        </select>
        <input type="text" name="keyword">
        <input type="submit" value="search">
        </form>
    </div>

    <table border="1">
        <tr>
            <th>Number</th>
            <th>Title</th>
            <th>Writer</th>
            <th>Post Date</th>
        </tr>
        <c:forEach items="${page.list}" var="board">
        <tr>
            <td>${board.bno}</td>
            <td><a href="/board/read?bno=${board.bno}">${board.title}</a></td>
            <td>${board.writer}</td>
            <td>${board.regdate}</td>
        </tr>
        </c:forEach>
    </table>
    <div class="paging">

        <c:if test="${page.prev}">
           <a href="/board/list?p=${page.startNum-1}&searchType=${param.searchType}&keyword=${param.keyword}">prev</a>
        </c:if>

        <c:forEach begin="${page.startNum}" end="${page.endNum}" var="num">
          <a href="list?p=${num}&searchType=${param.searchType}&keyword=${param.keyword}"> [ ${num} ]</a>
        </c:forEach>
        <c:if test="${page.next}">
         <a href="/board/list?p=${page.endNum +1}&searchType=${param.searchType}&keyword=${param.keyword}">next</a>
        </c:if>

    </div>



    <a href="/board/write">Write</a>
</body>
</html>
