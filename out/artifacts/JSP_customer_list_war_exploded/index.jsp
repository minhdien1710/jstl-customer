<%@ page import="java.util.ArrayList" %>
<%@ page import="customer.Customer" %><%--
  Created by IntelliJ IDEA.
  User: 84946
  Date: 9/19/2019
  Time: 9:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Player list</title>
  </head>
  <body>
  <%
    ArrayList<Customer> list = new ArrayList<>();
    list.add(new Customer("De Gea","1990","Spain","degea.jpg"));
    list.add(new Customer("Martial","1995","France","martial.jpg"));
    list.add(new Customer("Chong","1999","Netherlands","chong.jpg"));
    pageContext.setAttribute("list",list);
  %>
  <table border="1px">
    <tr>
      <td>Ten</td>
      <td>Ngay sinh</td>
      <td>Dia chi</td>
      <td>Anh</td>
    </tr>
    <c:forEach var="customer" items="#{list}">
    <tr>
      <td><h1><c:out value="${customer.name}"></c:out></h1></td>
      <td><h1><c:out value="${customer.birthDay}"></c:out></h1></td>
      <td><h1><c:out value="${customer.address}"></c:out></h1></td>
      <td><img width=150px height=150px id="img" src="<c:out value="${customer.image}"/>"></td>
    </tr>

    </c:forEach>
  </table>
  </body>
</html>
