<%-- 
    Document   : Index
    Created on : Mar 6, 2017, 7:53:59 PM
    Author     : vikrant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="css/login/style.css">
    </head>
    <div class="login">
  <header class="header">
    <span class="text">LOGIN</span>
    <span class="loader"></span>
  </header>
    <form class="form" action="Welcome" method="post">  
    <input class="input" name="username" type="text" placeholder="Username">
    <input class="input" name="password" type="password" placeholder="Password">
    <button class="btn" name="submit" type="submit"></button>    
  </form>
</div>
<div><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></div>
<button class ="resetbtn" type= "reset">Reset it</button>
  <!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script> -->

    <script src="js/index.js"></script>

</body>
</html>
