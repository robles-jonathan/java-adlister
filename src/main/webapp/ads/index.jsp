<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jonrob287
  Date: 2/7/22
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show All Ads</title>
</head>
<body>
    <h1>Here are the ads</h1>
<c:forEach var="ad" items="${ads}">
    <div class="ad">
        <h2>${ad.title}</h2>
        <small>User id: ${ad.userId}</small>
        <h3>Description</h3>
        <p>${ad.description}</p>
    </div>
</c:forEach>
</body>
</html>
