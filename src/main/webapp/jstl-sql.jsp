<%--
  Created by IntelliJ IDEA.
  User: Nevels
  Date: 12/4/2022
  Time: 6:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>JSTL sql</title>
  <style>
    <%@include file="/WEB-INF/css/computers.css" %>
  </style>
</head>
<body>
<sql:setDataSource var="jdbc" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/jdbc?serverTimezone=UTC"
                   user="root"
                   password="212109"/>
<sql:query dataSource="${jdbc}" var="weather">
  SELECT * FROM weather;
</sql:query>
<table>
  <tr>
    <th>COUNTRY</th>
    <th>TYPE</th>
    <th>DATE</th>
    <th>TEMPERATURE</th>
  </tr>
  <c:forEach var="weather" items="${weather.rows}">
    <tr>
      <td>${weather.contry}</td>
      <td>${weather.type}</td>
      <td>${weather.date}</td>
      <td>${weather.temperature}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
