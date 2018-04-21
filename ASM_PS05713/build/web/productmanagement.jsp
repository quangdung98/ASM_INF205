<%-- 
    Document   : register
    Created on : Oct 15, 2017, 12:15:02 AM
    Author     : GiaHieu
--%>
<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page import="model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/cssinsertproduct.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COS PRODUCT MANAGEMENT</title>
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
                    <a href="loginsuccess.jsp">WELCOME , ${sessionScope.USER}</a> &nbsp; &nbsp; &nbsp;      
                    <a href="register.jsp">REGISTER</a> &nbsp; &nbsp; &nbsp;
                    <a href="contact.jsp">CONTACT</a> &nbsp; &nbsp; &nbsp;        
                </nav>  
            </div>
        </header>
        <br> <br> 
        <h2>  &nbsp; &nbsp; &nbsp; PRODUCT MANAGEMENT </h2>
        <hr>
        <br>
        <div class="gioithieu">
            <div id="gioithieuchu">
                <form action="UploadFile" enctype="multipart/form-data" method="post">
                    <label for="fname">Code Insert</label>
                    <input type="text" value="" name="txtCodeInsert"/>
                    <br>
                    <label for="lname">Name Insert</label>
                    <input type="text" value="" name="txtNameInsert"/>
                    <br>
                    <label for="lname">Price Insert</label>
                    <input type="text" value="" name="txtPriceInsert"/>
                    <br>
                    <label for="lname">Choose File</label>
                    <input type="file" value="" name="fileUp"/>
                    <br>
                    <input type="submit" value="Insert Product" />
                    <br>
                </form>
                <br>
                <hr>
                <br>
                <form action="ControllerCartBean" method="get">
                    <label for="lname">Code Delete</label>
                    <input type="text" id="lname" name="txtCodeDel"/>
                    <br>
                    <input type="submit" value="Delete Product" name="action"/>
                    <br>
                    <br>
                    <hr>
                    <input type="submit" value="Back" name="action"/>
                </form>
            </div>
            <div id="gioithieuhinh">
                <table border="1" height="100px" width="650px" cellpadding="5px" cellspacing="5px">
                    <tr>
                        <td>Code</td>
                        <td>Name</td>
                        <td>Price</td>
                        <td> Link Img</td>
                    </tr>
                    <%
                        Products listSP = new Products();
                        List<Product> list = listSP.showProduct("");
                        for (Product sp : list) {
                            out.println("<form action=\"ControllerCartBean\">");
                            out.println("<tr><td>" + sp.getCode()
                                    + "</td><td>" + sp.getName() + "</td>"
                                    + "<td>" + sp.getPrice() + "</td>"
                                    + "<td>" + sp.getImage() + "</td>"
                                    + "<input type=\"hidden\" name=\"txtCode\" value='" + sp.getCode() + "'>"
                                    + "<input type=\"hidden\" name=\"txtName\" value='" + sp.getName() + "'>"
                                    + "<input type=\"hidden\" name=\"txtPrice\" value='" + sp.getPrice()
                                    + "'> </tr>");
                            out.println("</form>");

                        }
                    %>
                </table>
            </div>
        </div>	
        <br>
        <br>
        <br>
        <br>s
        <footer>
            <div class="cuoi">
                <hr>
                <p> COS Production © 2017. All rights reserved </p>
            </div>
        </footer>
    </body>
</html>
