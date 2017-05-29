<%-- 
    Document   : Home
    Created on : Mar 6, 2017, 7:45:34 PM
    Author     : vikrant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>Welcome <%=request.getAttribute("userName") %></h1><br/>
        <div>Choose the user types</div>
        <div>Admin</div>
        <div>Users</div>
    </body>
</html>
