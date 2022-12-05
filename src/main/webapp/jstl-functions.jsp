<%--
  Created by IntelliJ IDEA.
  User: Nevels
  Date: 12/4/2022
  Time: 6:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>JSTL Functions</title>
</head>
<body>
<h1>Second: This is first String.</h1>
<h2>fn:startsWith() results</h2>
<c:set var = "string" value = "Second: This is first String."/>
<c:if test = "${fn:startsWith(string, 'First')}">
    <p>String starts with First</p>
</c:if>
<c:if test = "${fn:startsWith(string, 'Second')}">
    <p>String starts with Second</p>
</c:if>
<h1>fn:length() results</h1>
<h2>Result from fn:length():</h2>
<p>${fn:length(string)}</p>
<h2>Result from java code:</h2>
<p>${string.length()}</p>
<p></p>
</body>
</html>
