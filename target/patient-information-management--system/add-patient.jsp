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
                    <h2>Patient Registration</h2>
                    <div class="action">
                        <a href="./patients.jsp" class="action-btn">Patient List</a>
                    </div>
                </div>
                <form action="users" method="post" name="add-patients">
                    <p class="message"></p>
                    <div class="group">
                        <label for="patientType">Patient Type</label>
                       <select name="patientType" id="patientType">
                           <option value="" selected >Select Type</option>
                           <option value="STUDENT">Student</option>
                           <option value="CIVILIAN">Civilian</option>
                       </select>
                    </div>
                    <div class="group" id="patient">
                        <label for="patientId">ID</label>
                        <input type="number" id="patientId" name="patientId"  placeholder="Patient ID" min="1"/>
                    </div>
                    <div class="group" id="student">
                        <label for="studentId">Student ID</label>
                        <input type="text" id="studentId" name="studentId"  placeholder="Student ID">
                    </div>
                    <div class="group ">
                        <label for="firstName">Full Name</label>
                        <input type="text" id="firstName" name="firstName"  placeholder="First Name" required/>
                    </div>
                    <div class="group ">
                        <label for="lastName">Last Name</label>
                        <input type="text" id="lastName" name="lastName"  placeholder="Last Name" readonly/>
                    </div>
                    <div class="group">
                        <label for="age">Age</label>
                        <input type="number" id="age" name="age"  placeholder="Patient Age" min="1"/>
                    </div>
                    <div class="group">
                        <label for="weight">Weight</label>
                        <input type="number" id="weight" name="weight"  placeholder="Patient Weight" min="1"/>
                    </div>
                    <div class="group">
                        <label for="allergies">Allergies</label>
                        <textarea id="allergies" name="allergies"  placeholder="Allergies if any" rows="5"></textarea>
                    </div>
                    <button type="submit">Register Patient</button>
                </form>
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