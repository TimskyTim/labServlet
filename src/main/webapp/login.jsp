<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>g
    <%
        request.getSession().setAttribute("username",null);
    %>
    <body background="http://i24.com.ua/data/files/2016/11/15/DSC05415.JPG">
        <form action="login" method="POST">
            <input type="text" placeholder="имя" name="username"/>
            <br/><br/>
            <input type="password" placeholder="пароль" name="password"/>
            <br/><br/>
            <input type="submit" value="Вход"/>
        </form>
    </body>
</html>