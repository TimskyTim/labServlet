<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Чат</title>
    </head>
    <body>
    <%
        String username=(String)request.getSession().getAttribute("username");
        if(username==null)
//                username="";
            response.sendRedirect("/Chat/login.jsp");
    %>
    <ul>
        <c:forEach var="message" items="${messages}">
            <li>
                <c:out value="${message}"></c:out>
                <a href="${message.author}.reply">reply</a>
            </li>
        </c:forEach>
    </ul>
    </body>
</html>
