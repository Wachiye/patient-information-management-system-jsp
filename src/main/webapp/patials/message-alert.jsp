<%--
  Created by IntelliJ IDEA.
  User: sirah
  Date: 13/07/2021
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String message = request.getParameter("message");
    String type = request.getParameter("type");
    if(type == null){
        type ="info";
    }
%>
<div class="message-alert <%= type%>" id="message-alert">
    <p class="message"><%= message%></p>
    <div class="close" onclick="document.getElementById('message-alert').style.display='none';">&times;</div>
</div>
