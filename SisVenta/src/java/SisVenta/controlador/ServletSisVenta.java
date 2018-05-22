/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.controlador;

import SisVenta.dao.categoriaDao;
import SisVenta.dao.marcaDao;
import SisVenta.dao.modeloDao;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dxros
 */
public class ServletSisVenta extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getServletPath();
        switch (path) {
            case "/ConsultarModelo": {
                try {
                    ConsultarModelo(request, response);
                }catch (Exception ex) {
                    Logger.getLogger(ServletSisVenta.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    private void ConsultarModelo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception {
        String destino;

        try {
            modeloDao modlis = new modeloDao();
            request.setAttribute("Listar", modlis.readAll());
            categoriaDao catlis = new categoriaDao();
            request.setAttribute("ListarCat", catlis.readAll());
            marcaDao marlis = new marcaDao();
            request.setAttribute("ListaMar", marlis.readAll());
            destino = "Catalogo.jsp";
        } catch (ClassNotFoundException | SQLException e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "Catalogo.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }
}
