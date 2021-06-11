/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Articulo;
import Model.ArticulosParejaDTO;
import Model.Compra;
import Model.Gestor;
import Model.TotalesDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "CargarComprasS", urlPatterns = {"/CargarComprasS"})
public class CargarComprasS extends HttpServlet {

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
	if (request.getSession().getAttribute("username") == null)
        {
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/Main.jsp");
            rd.forward(request, response);
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
            String id=request.getParameter("id");
            int idPareja=Integer.parseInt(id);
            request.setAttribute("idPareja", id);
            Gestor g = new Gestor();
            ArrayList<ArticulosParejaDTO>listaArtPareja=g.obtenerCompras(idPareja);
            TotalesDTO totales = g.totales(idPareja);
            request.setAttribute("totales", totales);
            request.setAttribute("listaArtPareja",listaArtPareja);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/CargaCompras.jsp");
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
            int codigoPareja=Integer.parseInt(request.getParameter("txtIdPareja"));
            int codigo=Integer.parseInt(request.getParameter("cboArticulos"));
            Gestor g =new Gestor();
            Compra c= new Compra(codigoPareja,codigo);
            g.insertarCompra(c);
        
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/ListadoParejas.jsp");
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
