/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.controlador;

import SisVenta.dao.modeloDao;
import SisVenta.modelo.modelo;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
public class ServletModelo extends HttpServlet {

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
            case "/administration/ConsultarProducto": {
                try {
                    ConsultarProducto(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(ServletModelo.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            break;
            case "/administration/InsertarProducto": {
                try {
                    InsertarProducto(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(ServletModelo.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            break;
            case "/administration/BorrarProducto": {
                try {
                    BorrarProducto(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(ServletModelo.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            break;
            case "/administration/ModificarProducto": {
                try {
                    ModificarProducto(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(ServletModelo.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    private void ConsultarProducto(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String destino;
        try {
            modeloDao prodao = new modeloDao();
            request.setAttribute("Listar", prodao.readAll());
            destino = "ListProducto.jsp";
        } catch (Exception e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "ListProducto.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

    private void InsertarProducto(HttpServletRequest request, HttpServletResponse response) throws ParseException, Exception {
        String destino;
        modelo mod = new modelo();
        mod.setDescripcion(request.getParameter("txtdesc"));
        mod.setPrecio(Double.parseDouble(request.getParameter("txtpre")));
        mod.setStock(Integer.parseInt(request.getParameter("txtstk")));
        mod.setDescuento(Double.parseDouble(request.getParameter("txtdsct")));
        mod.setDeadline(request.getParameter("txtfcd"));
        try {
            modeloDao modlis = new modeloDao();
            request.setAttribute("Insertar", modlis.create(mod));
            destino = "AddProducto.jsp";
        } catch (ClassNotFoundException e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "AddProducto.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

    private void BorrarProducto(HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String cod = request.getParameter("cod");
            modeloDao modlis = new modeloDao();
            modlis.delete2(cod);
            out.println(modlis.delete(cod));
        } catch (ClassNotFoundException e) {
            out.println("ERROR: " + e.getMessage());
        } finally {
            out.flush();
            out.close();
        }
    }

    private void ModificarProducto(HttpServletRequest request, HttpServletResponse response) throws ParseException, Exception {
        String destino;
        modelo mod = new modelo();
        mod.setMod_cod(request.getParameter("txtcod"));
        mod.setDescripcion(request.getParameter("txtdesc"));
        mod.setPrecio(Double.parseDouble(request.getParameter("txtpre")));
        mod.setDescuento(Double.parseDouble(request.getParameter("txtdsct")));
        mod.setStock(Integer.parseInt(request.getParameter("txtstk")));
        mod.setDeadline(request.getParameter("txtfcd"));

        try {
            modeloDao modlis = new modeloDao();
            request.setAttribute("mensaje", modlis.update(mod));
            destino = "UpdProducto.jsp";
        } catch (ServletException e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "UpdProducto.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }
}
