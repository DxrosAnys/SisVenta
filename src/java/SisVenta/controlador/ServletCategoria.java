/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.controlador;

import SisVenta.dao.categoriaDao;
import SisVenta.modelo.categoria;
import java.io.IOException;
import java.io.PrintWriter;
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
public class ServletCategoria extends HttpServlet {

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
            case "/administration/ConsultarCategoria": {
                try {
                    ConsultarCategoria(request, response);
                } catch (IOException | ServletException ex) {
                    Logger.getLogger(ServletModelo.class.getName()).log(Level.SEVERE, null, ex);
                }
            }          
            break;
            case "/administration/InsertarCategoria": {
                try {
                    InsertarCategoria(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(ServletModelo.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            break;
            case "/administration/BorrarCategoria": {
                try {
                    BorrarCategoria(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(ServletModelo.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            break;
            case "/administration/ModificarCategoria": {
                try {
                    ModificarCategoria(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(ServletModelo.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    private void ConsultarCategoria(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destino;
        try {
            categoriaDao catdao = new categoriaDao();
            request.setAttribute("Listar", catdao.readAll());
            destino = "ListCategoria.jsp";
        } catch (Exception e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "ListCategoria.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

    private void InsertarCategoria(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String destino;
        categoria cat = new categoria();
        cat.setDescripcion(request.getParameter("txtdesc"));
        try {
            categoriaDao catlis = new categoriaDao();
            request.setAttribute("Insertar", catlis.create(cat));
            destino = "AddCategoria.jsp";
        } catch (ClassNotFoundException e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "AddCategoria.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

    private void BorrarCategoria(HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String cod = request.getParameter("cod_cat");
            categoriaDao modlis = new categoriaDao();
            modlis.delete(cod);
            out.println(modlis.delete(cod));
        } catch (ClassNotFoundException e) {
            out.println("ERROR: " + e.getMessage());
        } finally {
            out.flush();
            out.close();
        }
    }

    private void ModificarCategoria(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String destino;
        categoria mod = new categoria();
        mod.setCat_cod(request.getParameter("txtcod"));
        mod.setDescripcion(request.getParameter("txtdesc"));

        try {
            categoriaDao modlis = new categoriaDao();
            request.setAttribute("mensaje", modlis.update(mod));
            destino = "ConsultarCategoria";
        } catch (ServletException e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "UpdCategoria.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

}
