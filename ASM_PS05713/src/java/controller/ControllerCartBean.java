/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import cart.CartBean;
import cart.ProductDTO;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginBean;
import model.Product;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;


public class ControllerCartBean extends HttpServlet {

    final private String done = "insertproduct.jsp";
    final private String errorPage = "fail.jsp";
    final private String homePage = "login.jsp";
    final private String welcomePage = "loginsuccess.jsp";
    final private String registerPage = "register.jsp";
    final private String showpage = "show.jsp";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String action = request.getParameter("action");
            if (action.equals("Add To Cart")) {
                HttpSession session = request.getSession(true);
                CartBean shop = (CartBean) session.getAttribute("SHOP");
                if (shop == null) {
                    shop = new CartBean();
                }
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String pri = request.getParameter("txtPrice");
                float fpri = Float.parseFloat(pri);
                Product s = new Product(code, name, fpri);
                ProductDTO sp = new ProductDTO(s);
                shop.addSanPham(sp);
                session.setAttribute("SHOP", shop);
                RequestDispatcher rd = request.getRequestDispatcher("showproduct.jsp");
                rd.forward(request, response);
            } else if (action.equals("Management Product")) {
                RequestDispatcher rd = request.getRequestDispatcher("productmanagement.jsp");
                rd.forward(request, response);
            } else if (action.equals("Management Member")) {
                RequestDispatcher rd = request.getRequestDispatcher("membermanagement.jsp");
                rd.forward(request, response);
            }  else if (action.equals("AddMore")) {
                RequestDispatcher rd = request.getRequestDispatcher("showproduct.jsp");
                rd.forward(request, response);
            } else if (action.equals("Delete Product")) {
                String code = request.getParameter("txtCodeDel");
                Product pro = new Product();
                boolean result = pro.deleteRecord(code);
                RequestDispatcher rd = request.getRequestDispatcher("productmanagement.jsp");
                rd.forward(request, response);
            } 
            else if (action.equals("Delete Member")) {
                String username = request.getParameter("txtUserDel");
                LoginBean lg = new LoginBean();
                boolean result = lg.deleteMember(username);
                RequestDispatcher rd = request.getRequestDispatcher("membermanagement.jsp");
                rd.forward(request, response);
            }else if (action.equals("Remove")) {
                String[] list = request.getParameterValues("rmv");
                if (list != null) {
                    HttpSession session = request.getSession();
                    if (session != null) {
                        CartBean shop = (CartBean) session.getAttribute("SHOP");
                        if (shop != null) {
                            for (int i = 0; i < list.length; i++) {
                                shop.removeSanpham(list[i]);
                            }
                            session.setAttribute("SHOP", shop);
                        }
                    }
                }
                RequestDispatcher rd = request.getRequestDispatcher("showcart.jsp");
                rd.forward(request, response);
            } else if (action.equals("Login")) {
                String username = request.getParameter("txtUser");
                String password = request.getParameter("txtPass");
                LoginBean login = new LoginBean();
                boolean result = login.checkLogin(username, password);
                String url = errorPage;
                if (result) {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("USER", username);
                    url = welcomePage;
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Management Product")) {
                RequestDispatcher rd = request.getRequestDispatcher("productmanagement.jsp");
                rd.forward(request, response);
            } else if (action.equals("Management Member")) {
                RequestDispatcher rd = request.getRequestDispatcher("membermanagement.jsp");
                rd.forward(request, response);
            } else if (action.equals("Register")) {
                String username = request.getParameter("txtUser");
                String password = request.getParameter("txtPass");
                String lastname = request.getParameter("txtLast");
                LoginBean login = new LoginBean();
                boolean result = login.insert(username, password, lastname);
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            } else if (action.equals("Back")) {
                RequestDispatcher rd = request.getRequestDispatcher("loginsuccess.jsp");
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally { 
            out.close();
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
