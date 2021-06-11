/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Articulo;
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
@WebServlet(name = "ModificarArticuloS", urlPatterns = {"/ModificarArticuloS"})
public class ModificarArticuloS extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id=request.getParameter("id");
        int codigo=Integer.parseInt(id);
        Gestor g =new Gestor();
        Articulo a = g.obtenerArticuloPorCodigo(codigo);
        
        request.setAttribute("articuloM", a);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/ModificarArticulo.jsp");
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
        int id=Integer.parseInt((String)request.getParameter("txtIdArt"));
        String precio=request.getParameter("txtPrecio");
        String descripcion=request.getParameter("txtDescripcion");
        Articulo art = new Articulo(id,Float.parseFloat(precio),descripcion);
        g.modificarArticulo(art);
        RequestDispatcher rd = request.getRequestDispatcher("/ListadoArticulos.jsp");
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
