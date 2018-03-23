<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
        <%
            String username=(String)request.getSession().getAttribute("username");
            if(username==null)
//                username="";
                response.sendRedirect("/Chat/login.jsp");
        %>
    <body background="http://i24.com.ua/data/files/2016/11/15/DSC05415.JPG">
    <form action="login" method="POST">
        <input type="text" placeholder="логин" name="username" value=<%=username%> />
        <br/><br/>
        <input type="password" placeholder="пароль" name="password"/>
        <br/><br/>
        <input type="submit" value="Вход"/>
    </form>

