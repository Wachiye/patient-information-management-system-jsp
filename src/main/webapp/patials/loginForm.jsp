<%--
  Created by IntelliJ IDEA.
  User: sirah
  Date: 10/07/2021
  Time: 23:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="login">
    <form method="POST" action="/auth?login">
        <input type="text" id="username" name="username"  placeholder="Username" required/>
        <input type="password" id="password" name="password"  placeholder="Password" required/>
        <button type="submit">Login</button>
    </form>
</div>
