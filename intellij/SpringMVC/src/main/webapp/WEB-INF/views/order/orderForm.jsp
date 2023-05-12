<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2023-05-12
  Time: 오후 3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Form</title>
</head>
<body>
  
  <h1>Order</h1>
  <hr>

<form method="post">
  <h3>Product 1</h3>
  ID - <input type="text" name="orderItems[0].itemId" > <br> <%--setItemId(사용자입력파라미터데이터) --%>
  Quantity - <input type="number" name="orderItems[0].number" > <br> <%--setNumber(사용자입력파라미터데이터) --%>
  Caution - <input type="text" name="orderItems[0].remark"> <br> <%-- setRemark (사용자입력파라미터데이터)--%>

  <h3>Product 2</h3>
  ID - <input type="text" name="orderItems[1].itemId" > <br> <%--setItemId(사용자입력파라미터데이터) --%>
  Quantity - <input type="number" name="orderItems[1].number" > <br> <%--setNumber(사용자입력파라미터데이터) --%>
  Caution - <input type="text" name="orderItems[1].remark"> <br> <%-- setRemark (사용자입력파라미터데이터)--%>

  <h3>Product 3</h3>
  ID - <input type="text" name="orderItems[2].itemId" > <br> <%--setItemId(사용자입력파라미터데이터) --%>
  Quantity - <input type="number" name="orderItems[2].number" > <br> <%--setNumber(사용자입력파라미터데이터) --%>
  Caution - <input type="text" name="orderItems[2].remark"> <br> <%-- setRemark (사용자입력파라미터데이터)--%>

  <h3>Delivery Address</h3>
  Postal Code : <input type="text" name="address.zipcode"> <br>
  Address 1 : <input type="text" name="address.address1" > <br>
  Address 2 : <input type="text" name="address.address2" > <br>

  <br>
  <input type="submit" value="Submit">

</form>


</body>
</html>
