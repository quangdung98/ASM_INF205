<%-- 
    Document   : showmem
    Created on : Oct 20, 2017, 1:22:20 AM
    Author     : GiaHieu
--%>
<%@page import="model.LoginBean"%>
<%@page import="java.util.List"%>
<%@page import="model.LoginBeans"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/cssinsertproduct.css">
        <title>COS MEMBER MANAGEMENT</title>
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
                        <a href="loginsuccess.jsp">WELCOME , ${sessionScope.USER}</a> &nbsp; &nbsp; &nbsp;      
                        <a href="register.jsp">REGISTER</a> &nbsp; &nbsp; &nbsp;
                        <a href="contact.jsp">CONTACT</a> &nbsp; &nbsp; &nbsp;     
                    </nav>  
                </div>
            </header>
            <br> <br> 
            <h2>  &nbsp; &nbsp; &nbsp; MEMBER MANAGEMENT </h2>
            <hr>
            <br>
            <div class="gioithieu">
                <div id="gioithieuchu">
                    <label for="fname">Username</label>
                    <input type="text" value="" name="txtUserDel" />
                    <br>
                    <input type="submit" value="Delete Member" name="action"/>
                    <br>
                    <br>
                    <hr>
                    <br>
                    <input type="submit" value="Back" name="action"/>
                </div>
                <div id="gioithieuhinh">
                    <table border="1" height="100px" width="650px" cellpadding="5px" cellspacing="5px">
                        <tr>

                            <td>User Name</td>
                            <td>Last Name</td>

                        </tr>
                        <%
                            LoginBeans listLG = new LoginBeans();
                            List<LoginBean> list = listLG.showMember("");
                            for (LoginBean lg : list) {
                                out.println("<form action=\"ControllerCartBean\">");
                                out.println("<tr><td>" + lg.getUsername()
                                        + "</td><td>" + lg.getLastname() + "</td>"
                                        + "<input type=\"hidden\" name=\"txtUsername\" value='" + lg.getUsername() + "'>"
                                        + "<input type=\"hidden\" name=\"txtLassname\" value='" + lg.getLastname()
                                        + "'> </tr>");
                                out.println("</form>");

                            }
                        %>
                    </table>
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
