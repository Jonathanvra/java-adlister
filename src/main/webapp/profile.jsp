<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: jonathanvargas
  Date: 2/3/23
  Time: 9:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if(Objects.equals(request.getParameter("username"), "admin") && Objects.equals(request.getParameter("password"), "password")) {
    String redirectUrl = "/profile.jsp";
    response.sendRedirect(redirectUrl);
    }
%>
<form action="login.jsp" method="post">
    <label for="username">Username:</label>
    <input type="text" placeholder="Username" name="Username" id="username">
    <label for="password">Password:</label>
    <input type="text" placeholder="Password" name="Password" id="password">
    <button type="submit">Log In</button>
</form>
</body>
</html>
