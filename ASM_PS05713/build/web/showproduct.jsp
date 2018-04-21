<%-- 
    Document   : index
    Created on : Sep 21, 2017, 7:56:54 PM
    Author     : GiaHieu
--%>


<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page import="model.Products"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/cssproduct.css" rel="stylesheet" type="text/css"/>
        <title>COS PRODUCT</title>
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
            <h2>  &nbsp; &nbsp; &nbsp; PRODUCT </h2>
            <hr>
        </form>
        <%--
            Products listSP = new Products();
            List<Product> list = listSP.showProduct("");
            for (Product sp:list) {
                out.println("<form action=\"ControllerCartBean\">");
                out.println("<tr><td>" + sp.getCode() + "</td><td>" + sp.getName() + "</td>"
                        + "<td>" + sp.getPrice() + "</td>"
                        + "<td><img src=\"images/" + sp.getImage()+"\" height=\"150px\" width=\"150px\"></td>"
                        + "<td><input type=\"submit\" value=\"Add To Cart\" name=\"action\"> </td>"
                        + "<input type=\"hidden\" name=\"txtCode\" value='" + sp.getCode() + "'>"
                        + "<input type=\"hidden\" name=\"txtName\" value='" + sp.getName() + "'>"
                        + "<input type=\"hidden\" name=\"txtPrice\" value='" + sp.getPrice()+ "'>"
                        + " <input type=\"hidden\" name=\"fileUp\" value=\'"+sp.getImage()
                        + "'> </tr>");

                    out.println("</form>");

                }
        --%>

        <% Products listSP = new Products();
            List<Product> list = listSP.showProduct("");
            out.println("<div class=\"news\">");
            for (Product sp : list) {

                out.println("<div class=\"article\">");
                out.println("<form action=\"ControllerCartBean\">");
                out.println("<div class=\"thumb\" style=\"background-image:url(images/" + sp.getImage() + "\")></div>");
                out.println("<div class=\"title\"> || " + sp.getName() + " ||</div>");
                out.println("<div class=\"title\">" + sp.getPrice() + "</div>");
                out.println("<div class=\"title\"><input type=\"submit\" value=\"Add To Cart\" name=\"action\"></div>");
                out.println("<input type=\"hidden\" name=\"txtCode\" value='" + sp.getCode() + "'>"
                        + "<input type=\"hidden\" name=\"txtName\" value='" + sp.getName() + "'>"
                        + "<input type=\"hidden\" name=\"txtPrice\" value='" + sp.getPrice() + "'>"
                        + "<input type=\"hidden\" name=\"fileUp\" value=\'" + sp.getImage() + "'>");
                out.println("<hr/>");
                out.println("</form>");
                out.println("</div>");

            }
            out.println("</div>");

        %>

        <footer>
            <div class="cuoi">
                <hr>
                <p> COS Production © 2017. All rights reserved </p>
            </div>
        </footer>
    </body>
</html>
