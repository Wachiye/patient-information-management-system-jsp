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
                <h2>Medication History</h2>
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
                    <th>#</th>
                    <th>Patient Name</th>
                    <th>Patient ID</th>
                    <th>Medication</th>
                    <th>Requested By</th>
                    <th>Requested On</th>
                    <th>Issued By</th>
                    <th>Issued On</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>FirStname Lastname</td>
                    <td>S13/09474/12</td>
                    <td>
                        <ul>
                            <li>IFF 6H</li>
                            <li>IFF 6H</li>
                            <li>IFF 6H</li>
                        </ul>
                    </td>
                    <td>Dr XYZ</td>
                    <td>12/04/2020 12:30pm</td>
                    <td>Nancy</td>
                    <td>12/04/2020 12:53pm</td>
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