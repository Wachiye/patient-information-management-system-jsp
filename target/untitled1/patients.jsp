<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css//style.css">
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
                    <h2>Patient List</h2>
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Full Name</th>
                            <th>Age</th>
                            <th>Allergies</th>
                            <th>Type</th>
                            <th>Added On</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Wachiye Siranjofu</td>
                            <td>21</td>
                            <td>Null</td>
                            <td>STUDENT</td>
                            <td>12/12/2020</td>
                            <td>
                                <ul class="action">
                                    <a class="action-btn btn-green" href="/add-patient?action=edit&id=1">Edit</a>
                                    <a class="action-btn btn-blue" href="./pages/diagnoses.html?action=add&patientId=1">Diagnose</a>
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