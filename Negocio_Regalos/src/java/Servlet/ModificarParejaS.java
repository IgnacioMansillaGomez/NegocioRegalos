/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Pareja;
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
@WebServlet(name = "ModificarParejaS", urlPatterns = {"/ModificarParejaS"})
public class ModificarParejaS extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id=request.getParameter("id");
        int codigoPareja=Integer.parseInt(id);
        
        Gestor g =new Gestor();
        Pareja p = g.obtenerParejaPorCodigo(codigoPareja);
        
        request.setAttribute("parejaM", p);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/ModificarPareja.jsp");
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
        int id=Integer.parseInt((String)request.getParameter("txtIdPar"));
        String nombre=request.getParameter("txtNombrePareja");
        Pareja p = new Pareja(id,nombre);
        g.modificarPareja(p);
        RequestDispatcher rd = request.getRequestDispatcher("/ListadoParejas.jsp");
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
