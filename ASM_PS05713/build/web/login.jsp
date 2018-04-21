<%-- 
    Document   : login
    Created on : Sep 25, 2017, 5:31:24 PM
    Author     : GiaHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/cssregister.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COS LOGIN</title>
    </head>
    <body>
        <form action="ControllerCartBean" method="post">
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
            <h2>  &nbsp; &nbsp; &nbsp; LOGIN </h2>
            <hr>
            <br>
            <div class="gioithieu">
                <div id="gioithieuchu">
                    <label for="fname">Username</label>
                    <input type="text" value="" name="txtUser"/> 
                    <br>
                    <label for="fname">Password</label>
                    <input type="password" value="" name="txtPass" />
                    <br>
                    <input type="submit" value="Login" name="action"/>
                </div>
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
