<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include file="/WEB-INF/welcome.jsp"%>--%>
<%--<%@include file="/WEB-INF/welcome.jsp"%>--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chat</title>
    </head>
    <body background="https://cdn-images-1.medium.com/max/1600/1*Ho5xpgZmdG2CU51sA9uGrA.jpeg">
    <%
        String value=(String)request.getSession().getAttribute("reply");
        if(value==null)
            value="";
    %>
        <h1>Welcome <%=request.getSession().getAttribute("username")%>!</h1>
        <form action="send" method="POST">
            Кому:<br/>
            <input type="text" name="from" value=<%=value%>><br/>
            Ваше сообщение:<br/>
            <textarea cols="50" rows="3"  name="msg"></textarea>
            <br/><br/>
            <input type="submit" title="Чего ждёшь?" value="Send"/>
        </form>
        <br/><br/>
        <a href="private.view">ЛС</a><br/>
        <a href="common.view">Общий чат</a><br/>
        <a href="all.view">Все сообщение (включая ЛС)</a><br/><br/>
        <a href="/Chat/login.jsp">Выход</a><br/>
        <br/><br/>
        Монитор Админа
        <%@include file="tableMessages.jsp"%>
    </body>
</html>
