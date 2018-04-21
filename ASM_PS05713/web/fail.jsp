<%-- 
    Document   : fail
    Created on : Sep 25, 2017, 6:22:27 PM
    Author     : GiaHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/cssiloginfail.css">
        <title>COS FAIL LOGIN</title>
    </head>
    <body>
        <form action="ControllerCartBean">
            <div class="hinhnen">
                <img src="Image/hinh5.jpg" >
            </div>
            <header>
                <div class="container">
                    <nav>
                        <br>
                        <a href="index.jsp">HOME</a> &nbsp; &nbsp; &nbsp;  
                        <a href="showproduct.jsp">PRODUCTS</a> &nbsp; &nbsp; &nbsp;     
                        <a href="showcart.jsp">VIEW CART</a> &nbsp; &nbsp; &nbsp;         
                        <a href="login.jsp">LOGIN</a> &nbsp; &nbsp; &nbsp;      
                        <a href="register.jsp">REGISTER</a> &nbsp; &nbsp; &nbsp;
                        <a href="contact.jsp">CONTACT</a> &nbsp; &nbsp; &nbsp; 
                    </nav>  
                </div>
            </header>
            <br> <br> 
            <h2>  &nbsp; &nbsp; &nbsp; <font color="red">Username or Password invalid!!!</font> </h2>
            <hr>
            <br>

            <div class="form-group">
                <h1></h1>
                Click<a href="login.jsp"> here</a> to try again ! or <br/>
                Click<a href="register.jsp"> register</a> to register new account
            </div>


        </form>
        <footer>
            <div class="cuoi">
                <hr>
                <p> COS Production © 2017. All rights reserved </p>
            </div>
        </footer>
    </body>
</html>
