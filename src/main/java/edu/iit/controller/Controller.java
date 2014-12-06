/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.iit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author supramo
 */
public class Controller extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controller at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        System.out.println("from getr" + request.getServletPath());
        String path = request.getRequestURI().substring(request.getContextPath().length());
        System.out.println("path is" + path);
        switch(path){
            
            case "/":
                request.getRequestDispatcher("index.jsp").forward(request, response);
            break;
        }
        
                
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
        
        PrintWriter out = response.getWriter();
        String path = request.getRequestURI().substring(request.getContextPath().length());
        System.out.println("path is" + path);
        System.out.println("req path is" + request.getServletPath());
        HttpSession session = request.getSession();  
        switch(path){
            case "/app/submitjob":
                String message = "Your Job is submitted, you will be emailed once completed";
                System.out.println(request.getParameter("email"));
                System.out.println(request.getParameter("optionnode"));
                System.out.println(request.getParameter("optionjob"));
                session.setAttribute("message", message);
                //request.setAttribute("message", "Your Job is submitted, you will be emailed once completed");
                //out.write("Sai is awesome");
                response.sendRedirect(request.getContextPath() + "/index.jsp");
                //request.getRequestDispatcher("/index.jsp").forward(request, response);
            break;
            default:
                out.write("Page not found");
            break;
                
        }
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
