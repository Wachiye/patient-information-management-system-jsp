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
                    <h2>About Egerton University Patient Registry</h2>
                </div>
                <div class="desc">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem et eveniet facilis, ipsam iusto laboriosam maxime modi necessitatibus provident repudiandae rerum temporibus vel vitae, voluptas voluptatum. Accusantium aliquam autem culpa delectus, dolorum earum eius eligendi enim et expedita, hic laboriosam minus nesciunt nisi nulla numquam omnis, quaerat ratione reprehenderit temporibus. A ad consectetur culpa fugiat harum quaerat quam ratione. Cum dolorem dolores eligendi, praesentium quas soluta ut. Blanditiis corporis cum doloribus expedita, inventore ipsum laudantium odit, perspiciatis placeat, quo repudiandae?</p>
                </div>
            </div>
        </main>
        <footer class="footer">
            <p>Copyright &copy; 2021</p>
        </footer>
    </div>
</body>
</html>