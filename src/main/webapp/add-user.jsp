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
        <h2>ADD MEDICINE</h2>
        <div class="action">
          <a href="./medicine.jsp" class="action-btn">Medicine List</a>
        </div>
      </div>
      <%
        String message = (String) request.getAttribute("message");
        String messageType = (String)  request.getAttribute("messageType");

        if( message != null) {
      %>
      <jsp:include page="patials/message-alert.jsp?">
        <jsp:param name="message" value="<%=message%>"/>
        <jsp:param name="type" value="<%=messageType%>"/>
      </jsp:include>
      <% } %>
      <div class="add-medicine">
        <form action="medicine" method="post">

          <div class="group">
            <label for="name">Medicine Name</label>
            <input type="text" name="name" id="name" placeholder="Medicine Name ege Ace hu" required>
          </div>
          <div class="group">
            <label for="genericName">Generic Name</label>
            <input type="text" name="genericName" id="genericName" placeholder="Generic Name eg Paracetamol" required>
          </div>
          <div class="group">
            <label for="storeBox">Store Box</label>
            <input type="text" name="storeBox" id="storeBox" placeholder="Store Box" required>
          </div>
          <div class="group">
            <label for="quantity">Quantity</label>
            <input type="number" name="quantity" id="quantity" placeholder="Quantity" min="1">
          </div>
          <div class="group">
            <label for="category">Category</label>
            <input type="text" name="category" id="category" placeholder="Category eg Fever" required>
          </div>
          <div class="group">
            <label for="sideEffects">Side Effects</label>
            <textarea name="sideEffects" id="sideEffects" placeholder="Side Effects eg Headache" rows="5"></textarea>
          </div>
          <div class="group">
            <label for="expiryDate">Expiry Date</label>
            <input type="date" name="expiryDate" id="expiryDate" required>
          </div>
          <button type="submit">Add Medicine</button>
        </form>
      </div>
    </div>
  </main>
  <footer class="footer">
    <p>Copyright &copy; 2021</p>
  </footer>
</div>
</body>
</html>