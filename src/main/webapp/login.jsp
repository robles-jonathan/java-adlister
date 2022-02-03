<%--
  Created by IntelliJ IDEA.
  User: jonrob287
  Date: 2/3/22
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(username.equalsIgnoreCase("Admin") && password.equals("password")) {
        response.sendRedirect("profile.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>