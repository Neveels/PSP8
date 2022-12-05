<%--
  Created by IntelliJ IDEA.
  User: Nevels
  Date: 12/4/2022
  Time: 6:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>JSTL Tags</title>
</head>
<body>
<c:set var = "weather" scope = "session" value = "${27}"/>
<p>Weather today is : <c:out value = "${weather}"/></p>
<c:choose>
  <c:when test = "${weather <= 25}">
    Weather is very cold today.
  </c:when>

  <c:when test = "${weather > 25}">
    Weather is very hot today.
  </c:when>

  <c:otherwise>
    You are probably homeless.
  </c:otherwise>
</c:choose>

<p>Before Remove Weather: <c:out value = "${weather}"/></p>
<c:remove var = "weather"/>
<p>After Remove Value: <c:out value = "${weather}"/></p>
</body>
</html>
