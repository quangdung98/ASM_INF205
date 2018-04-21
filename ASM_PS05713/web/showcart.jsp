<%-- 
    Document   : showcart
    Created on : Sep 21, 2017, 7:14:56 PM
    Author     : GiaHieu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COS SHOW CART</title>
        <link href="CSS/cssshowcart.css" rel="stylesheet" type="text/css"/>
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
        <h2>  &nbsp; &nbsp; &nbsp; SHOW CART </h2>
        <hr>
        <br>
        <div id="box1">
            <div class="table">
                <c:set var="shop" value="${sessionScope.SHOP}"/>
                <c:if test="${not empty shop}">
                    <form action="ControllerCartBean" method="post">
                    <table border="5" width="800px" height="100px" cellpadding="5px" cellspacing="5px">
                        <thead>
                            <tr>
                                <td>No.</td>
                                <td>Code</td>
                                <td>Name</td>
                                <td>Price</td>
                                <td>Quantity</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:set var="count" value="0" />
                            <c:forEach var="rows" items="${shop}">
                                <c:set var="count" value="${count + 1}"/>
                                <tr>
                                    <td>${count}</td>
                                    <td>${rows.value.sanpham.code}</td>
                                    <td>${rows.value.sanpham.name}</td>
                                    <td>${rows.value.sanpham.price}</td>
                                    <td>${rows.value.quantity}</td>
                                    <td><input type="checkbox" name="rmv"
                                               value="${rows.value.sanpham.code}"/></td>  
                                </tr>
                            </c:forEach>
                            <tr>
                                <c:url var="add" value="ControllerCartBean">
                                    <c:param name="action" value="AddMore"/>
                                </c:url>
                                <td colspan="2"><a href="${add}"> Add more </a> </td>
                                <td><input type ="submit" value="Remove" name="action"/></td>
                            </tr>
                            </tbody>
                    </table>
                    </form>
                </c:if>
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
