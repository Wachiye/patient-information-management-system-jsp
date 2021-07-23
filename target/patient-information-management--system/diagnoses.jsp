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
                    <h2>Patient Diagnoses List</h2>
                    <%@ include file="patials/pagination.jsp" %>
                </div>
                <%
                    String message = request.getParameter("message");
                    String messageType = request.getParameter("messageType");

                    if( message != null) {
                %>
                <jsp:include page="patials/message-alert.jsp?message=<%= message%>&type=<%= messageType%>>" />
                <% } %>
                <div class="updates">
                    <h3>Pending Diagnoses</h3>
                    <div class="pending">
                        <div>
                            <p class="id d-flex">24</p>
                            <h4 class="name">Wachiye Siranjofu</h4>
                            <p class="time">May 25, 2021 20:34</p>
                            <a class="link" href="./diagnose.jsp?id=24">Go</a>
                        </div>
                        <div>
                            <p class="id d-flex">24</p>
                            <h4 class="name">Wachiye Siranjofu</h4>
                            <p class="time">May 25, 2021 20:34</p>
                            <a class="link" href="./diagnose.jsp?id=24">Go</a>
                        </div>
                        <div>
                            <p class="id d-flex">24</p>
                            <h4 class="name">Wachiye Siranjofu</h4>
                            <p class="time">May 25, 2021 20:34</p>
                            <a class="link" href="./diagnose.jsp?id=24">Go</a>
                        </div>
                        <div>
                            <p class="id d-flex">24</p>
                            <h4 class="name">Wachiye Siranjofu</h4>
                            <p class="time">May 25, 2021 20:34</p>
                            <a class="link" href="./diagnose.jsp?id=24">Go</a>
                        </div>
                        <div>
                            <p class="id d-flex">24</p>
                            <h4 class="name">Wachiye Siranjofu</h4>
                            <p class="time">May 25, 2021 20:34</p>
                            <a class="link" href="./diagnose.jsp?id=24">Go</a>
                        </div>
                        <div>
                            <p class="id d-flex">24</p>
                            <h4 class="name">Wachiye Siranjofu</h4>
                            <p class="time">May 25, 2021 20:34</p>
                            <a class="link" href="../diagnose.jsp?id=24">Go</a>
                        </div>
                    </div>
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Full Name</th>
                            <th>Type</th>
                            <th>Symptoms</th>
                            <th>Test ID</th>
                            <th>Test Result</th>
                            <th>Diagnosis</th>
                            <th>Remarks</th>
                            <th>Added On</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Wachiye Siranjofu</td>
                            <td>STUDENT</td>
                            <td>headaches, fever</td>
                            <td>TEST#123</td>
                            <td>+VE</td>
                            <td>Malaria</td>
                            <td>Patient is suffering from Malaria</td>
                            <td>12/09/2021</td>
                            <td>
                                <ul class="action">
                                    <a class="action-btn btn-red" href="?action=delete&patientId=1">Delete</a>
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
<script type="text/javascript">
    var patientType = document.getElementById("patientType");
    var patient = document.getElementById("patient");
    var student = document.getElementById("student");

    patient.style.display = "none";
    student.style.display = "none";

    patientType.addEventListener('change', (evt)=> {
        patient.style.display = "none";
        student.style.display = "none";

        if(evt.target.value === "STUDENT"){
            student.style.display = "flex";
        }
        else{
            patient.style.display = "flex";
        }
    });
</script>
</html>