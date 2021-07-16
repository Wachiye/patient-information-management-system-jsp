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
            <div class="profile">
                <div class="profile-card">
                    <img src="images/favicon.ico" alt="">
                    <h5 class="section-title">Username</h5>
                    <h6 class="section-subtitle">Receptionist</h6>
                </div>
                <div class="content">
                    <div class="action">
                        <button class="toggler" id="toggle-profile" value="profile">
                            Profile
                        </button>
                        <button class="toggler" id="toggle-pwd" value="pwd">Password</button>
                    </div>
                    <div class="content-area">
                        <div id="profile">
                            <h5 class="section-title">Profile Details</h5>
                            <form action="patient" method="post">
                                <div class="group ">
                                    <label for="fullName">Full Name</label>
                                    <input type="text" id="fullName" name="fullName"  placeholder="Full Name"/>
                                </div>
                                <div class="group">
                                    <label for="age">Age</label>
                                    <input type="number" id="age" name="age"  placeholder="Patient Age" min="1"/>
                                </div>
                                <div class="group">
                                    <label for="allergies">Allergies</label>
                                    <textarea id="allergies" name="allergies"  placeholder="Allergies if any" rows="5"></textarea>
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
        </div>
    </main>
    <footer class="footer">
        <p>Copyright &copy; 2021</p>
    </footer>
</div>
</body>
<script type="text/javascript">
    var profileDiv = document.getElementById("profile");
    var pwdDiv = document.getElementById("pwd");
    var toggleHist = document.getElementById("toggle-profile");
    var toggleDiag = document.getElementById("toggle-pwd");

    pwdDiv.style.display = "none";

    toggleHist.addEventListener("click", (evt) => {
        toggleDisplay(evt.target.value);
    });

    toggleDiag.addEventListener("click", (evt) => {
        toggleDisplay(evt.target.value);
    });

    function toggleDisplay(targetId) {
        profileDiv.style.display = "none";
        pwdDiv.style.display = "none";

        if (targetId === "profile") {
            profileDiv.style.display = "block";
        } else {
            pwdDiv.style.display = "block";
        }
    }
</script>
</html>