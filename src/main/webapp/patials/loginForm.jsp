<%--
  Created by IntelliJ IDEA.
  User: sirah
  Date: 10/07/2021
  Time: 23:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
%>
<div class="login">
    <form method="POST" action="login">
        <input type="text" id="username" name="username" value='<%= username %>'  placeholder="Username" required/>
        <input type="password" id="password" name="password"  placeholder="Password" required/>
        <button type="submit">Login</button>
    </form>
</div>
