<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Message.MessageService" %>
<%@page import="Message.Message" %>

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
        <table width="100%" border="1">
            <tr>
                <th width="5%">От</th>
                <th width="5%">Кому</th>
                <th width="45%">Сообщение</th>
                <th width="45%">Дата</th>
            </tr>
            <%
                MessageService msgService=(MessageService) application.getAttribute("msgSvc");
                for(Message message:msgService.getAllMessages()){
                    out.println("<tr align=\"center\"><td>"+message.getAuthor()+"</td>");
                    out.println("<td>"+message.getRecipient()+"</td>");
                    out.println("<td>"+message.getText()+"</td>");
                    out.println("<td>"+message.getDate()+"</td></tr>");
                }
            %>
        </table>
    </body>
</html>
