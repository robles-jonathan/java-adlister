<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jonrob287
  Date: 2/3/22
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>


<%--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--%>
<%--//My IF ELSE solution    --%>

<%--<%--%>
<%--    String username = request.getParameter("username");--%>
<%--    String password = request.getParameter("password");--%>
<%--    if(username.equalsIgnoreCase("Admin") && password.equals("password")) {--%>
<%--        response.sendRedirect("profile.jsp");--%>
<%--    } else {--%>
<%--        response.sendRedirect("index.jsp");--%>
<%--    }--%>
<%--%>--%>

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

<c:if test="${param.username.toLowerCase() == ('admin')  && param.password == 'password'}">
    <%response.sendRedirect("/profile.jsp");%>
</c:if>
<c:if test="${param.username.toLowerCase() != 'admin' || param.password != 'password'}">
    <%response.sendRedirect("/index.jsp");%>
</c:if>
