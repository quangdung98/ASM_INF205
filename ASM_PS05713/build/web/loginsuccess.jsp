<%-- 
    Document   : welcome
    Created on : Sep 25, 2017, 6:09:51 PM
    Author     : GiaHieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/cssregister.css">
        <title>COS LOGIN SUCCESS</title>
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
                        <a href="#">WELCOME , ${sessionScope.USER}</a> &nbsp; &nbsp; &nbsp;      
                        <a href="register.jsp">REGISTER</a> &nbsp; &nbsp; &nbsp;
                        <a href="contact.jsp">CONTACT</a> &nbsp; &nbsp; &nbsp;       
                    </nav>  
                </div>
            </header>
            <br> <br> 
            <h2>  &nbsp; &nbsp; &nbsp; WELCOME , ${sessionScope.USER} TO MANAGEMENT </h2>
            <hr>
            <br>
            <div class="gioithieu">
                <div id="gioithieuchu">
                    <label for="fname">Product :</label>
                    <input type="submit" value="Management Product" name="action"/>
                    <br>
                    <br>
                    <label for="fname">Member :</label>
                    <input type="submit" value="Management Member" name="action"/>


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
