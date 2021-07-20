<%-- 
    Document   : index
    Created on : Dec 6, 2020, 12:07:21 AM
    Author     : Sera Vika Eviana
--%>

<%
    if(session.isNew()){
        session.getAttribute("Email");
    }
    else if(session.getAttribute("Email") == null){
        session.getAttribute("Email");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    
    <body>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="index.jsp">Home</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
        
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="keyboard.jsp">Keyboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="switch.jsp">Switch</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="mouse.jsp">Mouse</a>
                </li>
                </ul>
            </div>  
        </nav>
        
        <div class="container" style="margin-top:30px">
        <form style="text-align: right" method="post" action="Logout_Admin">
            <input type="submit" value="Logout" style="width: 100px; height: 40px; border: 1px solid #000000; border-radius: 12px">
        </form>
        <br><br><br><br>  
        <div class="row">
            <div class="col-sm-8">
                <img src="images/keyboard.jpg" width="500px">
            </div>
            <div class="col-sm-4">
                <h1>Welcome, admin</h1>
                <h3>Work hard, play hard</h3>
            </div>
        </div>
        
        
        <br><br><br><br><br><br><br>
        <div class="row">
            <div class="col-sm-12">
                <p style="text-align: center; color: black">&copy 2020 KeyMech All Right Reserved.</p>
            </div>
	</div> 
        </div>
    </body>
</html>
