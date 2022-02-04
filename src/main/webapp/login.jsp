<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jonrob287
  Date: 2/3/22
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>
        Login Page
    </title>
    <%@ include file="partials/head.jsp" %>
</head>
<body>
<%@ include file="partials/navbar.jsp" %>


<%--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--%>
<%--//My IF ELSE solution    --%>
<%--<%--%>
<%--    if(request.getMethod().equalsIgnoreCase("POST")){--%>
<%--        String username = request.getParameter("username");--%>
<%--        String password = request.getParameter("password");--%>
<%--        if(username.equalsIgnoreCase("Admin") && password.equals("password")) {--%>
<%--            response.sendRedirect("/profile.jsp");--%>
<%--        } else {--%>
<%--            response.sendRedirect("/login.jsp");--%>
<%--        }--%>
<%--    }--%>
<%--%>--%>


<div class="container">
    <div class="row">
        <form action="/login.jsp" method="POST">
            <div class="form-group">
                <h2>Login</h2>
            </div>
            <div class="form-group">
                <label>Username</label>
                <input type="text" id="username" name="username" class="form-control" placeholder="Enter Username" required="required">
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required="required">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Login</button>
            </div>
        </form>

        <%--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--%>
        <%--Using the c:choose c:when Solution--%>

        <c:choose>
            <c:when test="${param.username.equalsIgnoreCase('admin') && param.password == 'password'}">
                <%response.sendRedirect("/profile.jsp");%>
            </c:when>
        </c:choose>

    </div>
</div>
<%@ include file="partials/scripts.jsp" %>
</body>
</html>







<%--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--%>
<%--Using the c:choose c:when Solution--%>

<%--<c:choose>--%>
<%--    <c:when test="${param.username.equalsIgnoreCase('admin') && param.password == 'password'}">--%>
<%--        <%response.sendRedirect("/profile.jsp");%>--%>
<%--    </c:when>--%>
<%--    <c:otherwise>--%>
<%--        <%response.sendRedirect("/index.jsp");%>--%>
<%--    </c:otherwise>--%>
<%--</c:choose>--%>


<%--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--%>
<%--Using the c:choose c:if Solution--%>

<%--<c:if test="${param.username.toLowerCase() == ('admin')  && param.password == 'password'}">--%>
<%--    <%response.sendRedirect("/profile.jsp");%>--%>
<%--</c:if>--%>
<%--<c:if test="${param.username.toLowerCase() != 'admin' || param.password != 'password'}">--%>
<%--    <%response.sendRedirect("/login.jsp");%>--%>
<%--</c:if>--%>
