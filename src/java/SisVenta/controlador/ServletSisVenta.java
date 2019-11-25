/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.controlador;

import SisVenta.dao.categoriaDao;
import SisVenta.dao.especificacionDao;
import SisVenta.dao.marcaDao;
import SisVenta.dao.modeloDao;
import SisVenta.dao.subcategoriaDao;
import java.io.IOException;
import java.io.PrintWriter;
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
            case "/ConsultarProductos": {
                try {
                    ConsultarProductos(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(ServletSisVenta.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            break;
            case "/ConsultarSubCategoriaAjax":
                ConsultarSubCategoriaAjax(request, response);
                break;
            case "/ConsultarMarcaAjax":
                ConsultarMarcaAjax(request, response);
                break;
            case "/ConsultarModeloAjax":
                ConsultarModeloAjax(request, response);
                break;
                case "/ConsultarCategoria":
                ConsultarCategoria(request, response);
                break;
                case "/ConsultarEspecificacion":
        ConsultarEspecificacion(request,response);
        break;
        }
    }

    private void ConsultarProductos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception {
        String destino;
        try {
            modeloDao modlis = new modeloDao();
            request.setAttribute("Listar", modlis.readAll());
            destino = "Catalogo.jsp";
        } catch (ClassNotFoundException | SQLException e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "Catalogo.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

    private void ConsultarSubCategoriaAjax(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String cod = request.getParameter("cod");
            subcategoriaDao sublis = new subcategoriaDao();
            // mostrar datos de empleado en la pagina
            out.println(sublis.readAllSub(cod));
            out.println();
        } catch (Exception e) {
            out.println("ERROR: " + e.getMessage());
        } finally {
            out.flush();
            out.close();
        }
    }

    private void ConsultarMarcaAjax(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String id = request.getParameter("sub_cod");
            marcaDao dao = new marcaDao();
            // mostrar datos de empleado en la pagina
            out.println(dao.readAll(id));
        } catch (Exception e) {
            out.println("ERROR: " + e.getMessage());
        } finally {
            out.flush();
            out.close();
        }
    }

    private void ConsultarModeloAjax(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            modeloDao modlis = new modeloDao();
            // mostrar datos de empleado en la pagina
            out.println(modlis.Modelo());
            out.println();
        } catch (ClassNotFoundException | SQLException e) {
            out.println("ERROR: " + e.getMessage());
        } finally {
            out.flush();
            out.close();
        }
    }

    private void ConsultarCategoria(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String destino;
        try {
            categoriaDao catdao = new categoriaDao();
            request.setAttribute("ListarCat", catdao.readAll());
            modeloDao moddao= new modeloDao();
            request.setAttribute("Listar", moddao.readAll());
            destino = "Catalogo.jsp";
        } catch (Exception e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "Catalogo.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

    private void ConsultarEspecificacion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destino;
        String id =request.getParameter("codigo");
        try{
            modeloDao moddao = new modeloDao();
            request.setAttribute("BuscarMod", moddao.Buscar(id));
            especificacionDao espdao= new especificacionDao();
            request.setAttribute("BuscarEsp", espdao.Buscar(id));
            destino = "DetalleProducto.jsp";
        }catch(Exception e){
         request.setAttribute("Mensaje", e.getMessage());
            destino = "DetalleProducto.jsp";
        }
         RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
        }
    }
