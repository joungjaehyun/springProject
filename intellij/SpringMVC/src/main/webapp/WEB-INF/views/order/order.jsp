<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2023-05-12
  Time: 오후 4:05
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Order</title>
</head>
<body>

  <h1>Order List</h1>

    <c:forEach items="${order.orderItems}" var="orderItem">
        <h3>Product</h3>
        ID - ${orderItem.itemId} <br>
        Quantity - ${orderItem.number} <br>
        Caution - ${orderItem.remark} <br>
    </c:forEach>

    <h3>Delivery Address</h3>
    Postal Code - ${order.address.zipcode} <br>
    Address1 - ${order.address.address1}   <br>
    Address2 - ${order.address.address2}

</body>
</html>
