<%-- 
    Document   : register
    Created on : Sep 25, 2017, 6:28:06 PM
    Author     : GiaHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/cssregister.css">
        <title>COS REGISTER</title>
    </head>
    <body>
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
        <h2>  &nbsp; &nbsp; &nbsp; REGISTER </h2>
        <hr>
        <br>
        <div class="gioithieu">
            <div id="gioithieuchu">
                <form action="ControllerCartBean">
                    <label for="fname">Username</label>
                    <input type="text" value="" name="txtUser"/> 
                    <br>
                    <label for="fname">Password</label>
                    <input type="password" value="" name="txtPass"/>
                    <br>
                    <label for="fname">Last Name</label>
                    <input type="text" value="" name="txtLast"/>
                    <br>
                    <input type="submit" value="Register" name="action"/>
                </form>
            </div>
        </div>	
        <footer>
            <div class="cuoi">
                <hr>
                <p> COS Production © 2017. All rights reserved </p>
            </div>
        </footer>
    </body>
</html>
