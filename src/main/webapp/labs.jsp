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
                    <h2>Labs List</h2>
                    <div class="action">
                        <a href="lab-tests.jsp" class="action-btn">Add Lab Test</a>
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
                <div class="updates">
                    <h3>Pending Test Request</h3>
                    <div class="pending">
                        <div >
                            <p class="id d-flex">23</p>
                            <h4 class="name">Wachiye Siranjofu</h4>
                            <p class="time">May 25, 2021 20:34</p>
                            <a class="link" data-testId="125" data-Id="23">Test</a>
                        </div>
                        <div>
                            <p class="id d-flex">24</p>
                            <h4 class="name">Wachiye Siranjofu</h4>
                            <p class="time">May 25, 2021 20:34</p>
                            <a class="link" data-testId="123" data-Id="24">Test</a>
                        </div>
                        <div>
                            <p class="id d-flex">24</p>
                            <h4 class="name">Wachiye Siranjofu</h4>
                            <p class="time">May 25, 2021 20:34</p>
                            <a class="link" data-testId="123" data-Id="24">Test</a>
                        </div>
                        <div>
                            <p class="id d-flex">24</p>
                            <h4 class="name">Wachiye Siranjofu</h4>
                            <p class="time">May 25, 2021 20:34</p>
                            <a class="link" data-testId="123" data-Id="24">Test</a>
                        </div>
                    </div>
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Patient Name</th>
                            <th>Test ID</th>
                            <th>Test Desc</th>
                            <th>Requested By</th>
                            <th>Request On</th>
                            <th>Tested By</th>
                            <th>Tested On</th>
                            <th>Test Result</th>
                            <th>Remarks</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Wachiye Siranjofu</td>
                            <td>TEST#123</td>
                            <td>Test for Malaria</td>
                            <td>Dr. XYZ</td>
                            <td>12/12/2020</td>
                            <td>Dr. XYZ</td>
                            <td>12/12/2020</td>
                            <td>+VE</td>
                            <td>Malaria is present</td>
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
    <div class="modal" id="modal">
        <div class="close" id="close">&times;</div>
        <form action="/labs" method="post" id="lab-form" name="lab-form">
            <div class="group">
                <label for="patientId">Patient Id</label>
                <input type="text" id="patientId" name="patientId" placeholder="Patient Id">
            </div>
            <div class="group">
                <label for="testId">Test Id</label>
                <input type="text" id="testId" name="testId" placeholder="Test Id">
            </div>
            <div class="group">
                <label for="testDesc">Tes Desc</label>
                <input type="text" id="testDesc" name="testDesc" placeholder="Test Desc">
            </div>
            <div class="group">
                <label for="testResult">Test Result</label>
                <input type="text" id="testResult" name="testResult" placeholder="Test Result">
            </div>
            <div class="group">
                <label for="testRemarks">Test Remarks</label>
                <textarea id="testRemarks" name="testRemarks"  placeholder="Test Remarks" rows="5"></textarea>
            </div>
            <button type="submit">Submit Test</button>
        </form>
    </div>
</body>
<script type="text/javascript">

    var modal = document.getElementById("modal");
    var close = document.getElementById('close');

    var labForm = document.getElementById("lab-form");
    var linkElms = document.querySelectorAll(".link");

    var patientId = document.getElementById("patientId");
    var testId = document.getElementById("testId");
    var testDesc = document.getElementById("testDesc");
    var testResult = document.getElementById("testResult");

    var testRemarks = document.getElementById("testRemarks");
    close.addEventListener('click', (evt) => {
        modal.style.display = "none";
    });

    linkElms.forEach(elm => elm.addEventListener('click', (evt)=> {
        evt.preventDefault();
        patientId.value = evt.target.getAttribute("data-id");
        testId.value = evt.target.getAttribute("data-testId");
        
        modal.style.display = "block";

        
    }));

</script>
</html>