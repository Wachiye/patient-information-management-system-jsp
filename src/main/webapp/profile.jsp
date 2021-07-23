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
        <div class="login">
            <p>Welcome, Username</p>
        </div>
    </header>
    <main class="main">
        <div class="main-menu">
            <%@include file="patials/navigation.jsp"%>
        </div>
        <div class="main-content">
            <div class="title">
                <h2>Profile</h2>
            </div>
            <%
                String message = request.getParameter("message");
                String messageType = request.getParameter("messageType");

                if( message != null) {
            %>
            <jsp:include page="patials/message-alert.jsp?message=<%= message%>&type=<%= messageType%>>" />
            <% } %>
            <div class="profile">
                <div class="profile-name">
                    <h5 class="section-title">@Username</h5>
                    <h6 class="section-subtitle">Receptionist</h6>
                </div>
                <div class="profile-card">
                    <div id="profile">
                        <h5 class="section-title">Profile Details</h5>
                        <form action="profile" method="post">
                            <div class="group ">
                                <label for="fullName">Full Name</label>
                                <input type="text" id="fullName" name="fullName"  placeholder="Full Name"/>
                            </div>
                            <div class="group">
                                <label for="username">Username</label>
                                <input type="text" id="username" name="username"  placeholder="Username" disabled/>
                            </div>
                            <div class="group">
                                <label for="userType">User Type</label>
                                <input type="text" id="userType" name="userType"  placeholder="User Type" disabled/>
                            </div>
                            <button type="submit">Update</button>
                        </form>
                    </div>
                    <div id="pwd">
                        <h5 class="section-title">Change Password</h5>
                        <form action="pwd" method="post">
                            <div class="group ">
                                <label for="currentPassword">Current Password</label>
                                <input type="text" id="currentPassword" name="currentPassword"  placeholder="Current Password" required/>
                            </div>
                            <div class="group">
                                <label for="password">Password</label>
                                <input type="password" id="password" name="password"  placeholder="New Password" required/>
                            </div>
                            <div class="group">
                                <label for="password1">Confirm Password</label>
                                <input type="password" id="password1" name="password1"  placeholder="Confirm Password" required/>
                            </div>
                            <button type="submit">Change Password</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer class="footer">
        <p>Copyright &copy; 2021</p>
    </footer>
</div>
</body>
</html>