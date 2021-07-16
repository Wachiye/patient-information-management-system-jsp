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
                <h2>Medicine List</h2>
                <div class="action">
                    <a href="./add-medicine.jsp" class="action-btn">Add Medicine</a>
                </div>
                <%@ include file="patials/pagination.jsp" %>
            </div>
            <%
                String message = request.getParameter("message");
                String messageType = request.getParameter("messageType");

                if( message != null) {
            %>
            <jsp:include page="patials/message-alert.jsp?message=<%= message%>&type=<%= messageType%>>" />
            <% } %>
            <div class="search-bar"></div>
            <table class="table">
                <thead>
                    <tr>
                        <td>Name</td>
                        <td>Generic Name</td>
                        <td>Store Box</td>
                        <td>Quantity</td>
                        <td>Category</td>
                        <td>Side Effects</td>
                        <td>Expiry Date</td>
                        <td>Action</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Ace</td>
                        <td>Paracetamol</td>
                        <td>D5</td>
                        <td>45</td>
                        <td>Fever</td>
                        <td>--</td>
                        <td>12/12/2023</td>
                        <td>
                            <ul class="action">
                                <a class="action-btn btn-blue" href="?action=edit&id=1">Edit</a>
                                <a class="action-btn btn-red" href="?action=delete&id=1">Delete</a>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </main>
    <footer class="footer">
        <p>Copyright &copy; 2021</p>
    </footer>
</div>
</body>
</html>