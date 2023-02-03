<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: jonathanvargas
  Date: 2/3/23
  Time: 9:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%
    if(request.getMethod().equalsIgnoreCase("post") && Objects.equals(request.getParameter("username"), "admin") && Objects.equals(request.getParameter("password"), "password")) {
        String redirectUrl = "/profile.jsp";
        response.sendRedirect(redirectUrl);
    }
%>
<%--<%--%>
<%--  if(Objects.equals(request.getParameter("username"), "admin") && Objects.equals(request.getParameter("password"), "password")) {--%>
<%--     String redirectUrl = "/profile.jsp";--%>
<%--     response.sendRedirect(redirectUrl);--%>
<%--}--%>
<%--  %>--%>

<form action="login" method="post">
<%--  Username  --%>
    <label for="username">Username:</label>
    <input type="text" placeholder="Username" name="Username" id="username" required>
<%--  Password  --%>
    <label for="password">Password:</label>
    <input type="password" placeholder="Password" name="Password" id="password" required>
<%--  Log In Button  --%>
    <button type="submit">Log In</button>
</form>
</body>
</html>
