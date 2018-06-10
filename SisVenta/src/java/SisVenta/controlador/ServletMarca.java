/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.controlador;

import SisVenta.dao.marcaDao;
import SisVenta.modelo.marca;
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
public class ServletMarca extends HttpServlet {

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
            case "/administration/ConsultarMarca": {
                try {
                    ConsultarMarca(request, response);
                } catch (IOException | ServletException ex) {
                    Logger.getLogger(ServletModelo.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            break;
            case "/administration/InsertarMarca": {
                try {
                    InsertarMarca(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(ServletModelo.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            break;
            case "/administration/BorrarMarca": {
                try {
                    BorrarMarca(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(ServletModelo.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            break;
            case "/administration/ModificarMarca": {
                try {
                    ModificarMarca(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(ServletModelo.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

    }

    private void ConsultarMarca(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destino;
        try {
            marcaDao mardao = new marcaDao();
            request.setAttribute("Listar", mardao.readAll());
            destino = "ListMarca.jsp";
        } catch (Exception e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "ListMarca.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

    private void InsertarMarca(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String destino;
        marca mar = new marca();
        mar.setDescripcion(request.getParameter("txtdesc"));
        try {
            marcaDao marlis = new marcaDao();
            request.setAttribute("Insertar", marlis.create(mar));
            destino = "AddMarca.jsp";
        } catch (ClassNotFoundException e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "AddMarca.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

    private void BorrarMarca(HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String cod = request.getParameter("cod_mar");
            marcaDao modlis = new marcaDao();
            modlis.delete(cod);
            out.println(modlis.delete(cod));
        } catch (ClassNotFoundException e) {
            out.println("ERROR: " + e.getMessage());
        } finally {
            out.flush();
            out.close();
        }
    }

    private void ModificarMarca(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String destino;
        marca mod = new marca();
        mod.setMar_cod(request.getParameter("txtcod"));
        mod.setDescripcion(request.getParameter("txtdesc"));

        try {
            marcaDao modlis = new marcaDao();
            request.setAttribute("mensaje", modlis.update(mod));
            destino = "ConsultarMarca";
        } catch (ServletException e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "UpdMarca.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }
}
