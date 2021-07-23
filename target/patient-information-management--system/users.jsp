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
                    <h2>Users List</h2>
                    <div class="action">
                        <a href="./add-user.jsp" class="action-btn">Add User</a>
                    </div>
                    <%@ include file="patials/pagination.jsp" %>
                </div>
                <jsp:include page="patials/message-alert.jsp?message=${message}&type=${messageType}" />
                <table class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>username</th>
                            <th>User Type</th>
                            <th>Last Login</th>
                            <th>Added On</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
                            <td>1</td>
                            <td>First Name</td>
                            <td>LAST Name</td>
                            <td>Student</td>
                            <td>12/12/2021</td>
                            <td>12/13/2020 13:45</td>
                            <td>12/12/2020</td>
                            <td>
                                <ul class="action">
                                    <a class="action-btn btn-green" href="./pages/add-user?action=edit&userId=23">Edit</a>
                                    <a class="action-btn btn-red" href="?action=delete&userId=1">Delete</a>
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