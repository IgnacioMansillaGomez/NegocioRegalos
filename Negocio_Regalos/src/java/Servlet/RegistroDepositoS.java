/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Deposito;
import Model.Gestor;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nacho
 */
@WebServlet(name = "RegistroDepositoS", urlPatterns = {"/RegistroDepositoS"})
public class RegistroDepositoS extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException 
    {
	if (request.getSession().getAttribute("username") == null)
        {
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/Main.jsp");
            rd.forward(request, response);
	}

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id=request.getParameter("id");
        int idPareja=Integer.parseInt(id);
        request.setAttribute("idPareja", idPareja);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/RegistroDeposito.jsp");
	rd.forward(request, response);
        
        
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
           Gestor g = new Gestor();
        String codigoPareja=request.getParameter("txtIdPareja");
        String importe=request.getParameter("txtImporte");
        String nombre=request.getParameter("txtNombreComprador");
        String apellido=request.getParameter("txtApellidoComprador");        
        Deposito dep = new Deposito(Float.parseFloat(importe),Integer.parseInt(codigoPareja),nombre,apellido);
        g.insertarDeposito(dep);        
        RequestDispatcher rd = request.getRequestDispatcher("Main.jsp");
        rd.forward(request, response);
        
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
