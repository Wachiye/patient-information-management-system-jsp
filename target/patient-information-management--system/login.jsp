<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/style.css">
  <title>Document</title>
</head>
<body>
<div class="wrapper">
  <header class="header d-flex">
    <div class="brand d-flex">
      <img src="images/favicon.ico" alt="" >
      <h1>Egerton University Patient Registry</h1>
    </div>
  </header>
  <main class="main">
    <div class="main-menu">
      <%@include file="patials/navigation.jsp"%>
    </div>
    <div class="main-content">
      <div class="title">
        <h2>User Authentication</h2>
      </div>
      <%
        String message = (String) request.getAttribute("message");
        String messageType = (String)  request.getAttribute("messageType");
        String username = (String) request.getAttribute("username");
        if( message != null) {
      %>
      <jsp:include page="patials/message-alert.jsp?">
        <jsp:param name="message" value="<%=message%>"/>
        <jsp:param name="type" value="<%=messageType%>"/>
      </jsp:include>
      <% } %>
      <jsp:include page="patials/loginForm.jsp" >
        <jsp:param name="username" value='<%= username != null? username : "" %>'/>
      </jsp:include>
    </div>
  </main>
  <footer class="footer">
    <p>Copyright &copy; 2021</p>
  </footer>
</div>
</body>
</html>