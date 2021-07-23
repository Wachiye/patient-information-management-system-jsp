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
                <h2>Lab Tests</h2>
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
            <div class="lab-tests">
                <table class="table">
                    <caption>Lab Tests List</caption>
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Test Name</th>
                        <th>Test Code</th>
                        <th>Test Sample</th>
                        <th>Description</th>
                        <th>Requests</th>
                        <th>Performed</th>
                        <th>+ve</th>
                        <th>-ve</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>Malaria Test</td>
                        <td>MAL</td>
                        <td>Blood</td>
                        <td>--</td>
                        <td>120</td>
                        <td>
                            80
                            <a href="./labs.jsp?search&testCode=MAL">view</a>
                        </td>
                        <td>59</td>
                        <td>21</td>
                        <td>
                            <ul class="action">
                                <a href="?action=edit&id=1" class="action-btn btn-green">Edit</a>
                                <a class="action-btn btn-red" href="?action=delete&patientId=1">Delete</a>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Malaria Test</td>
                        <td>MAL</td>
                        <td>Blood</td>
                        <td>--</td>
                        <td>120</td>
                        <td>80</td>
                        <td>59</td>
                        <td>21</td>
                        <td>
                            <ul class="action">
                                <a href="?action=edit&id=1" class="action-btn btn-green">Edit</a>
                                <a class="action-btn btn-red" href="?action=delete&patientId=1">Delete</a>
                            </ul>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="add-lab-test">
                    <form action="addLabTest" method="post">
                        <div class="group">
                            <label for="testName">Test Name</label>
                            <input type="text" name="testName" id="testName" placeholder="Test Name eg Malaria" required>
                        </div>
                        <div class="group">
                            <label for="testCode">Test Code</label>
                            <input type="text" name="testCode" id="testCode" placeholder="Test Code eg Mal" required>
                        </div>
                        <div class="group">
                            <label for="testSample">Test Sample</label>
                            <input type="text" name="testSample" id="testSample" placeholder="Test Sample eg Blood" required>
                        </div>
                        <div class="group">
                            <label for="testDesc">Test Description</label>
                            <textarea name="testDesc" id="testDesc" placeholder="Test Description" rows="3" ></textarea>
                        </div>
                        <button type="submit">Save Test</button>
                    </form>
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