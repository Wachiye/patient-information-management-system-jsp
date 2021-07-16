<%@page isErrorPage="true" %>
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
        <%@include file="patials/loginForm.jsp"%>
    </header>
    <main class="main">
        <div class="main-menu">
            <%@include file="patials/navigation.jsp"%>
        </div>
        <div class="main-content">
            <div class="error-page">
                <h3 class="error-title">Oops! File Not Found</h3>
                <p class="error-message">Sorry but the page you requested was not found.</p>
                <p>Ensure that the URL
                    <span class="error-link">
                        <em><%= request.getRequestURI()%></em>
                    </span>
                    is correct and try again.
                </p>
                <hr style="margin: 5px 0">
                <p>If the problem persists, please contact your system administrator.</p>
            </div>
        </div>
    </main>
    <footer class="footer">
        <p>Copyright &copy; 2021</p>
    </footer>
</div>
</body>
</html>