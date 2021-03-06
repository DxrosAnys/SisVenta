/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.controlador;

import SisVenta.dao.subcategoriaDao;
import SisVenta.modelo.subcategoria;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dxros
 */
public class ServletSubCategoria extends HttpServlet {

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
            case "/administration/ConsultarSubCategoria": {
                    ConsultarSubCategoria(request, response);              
                break;
            }
            case "/administration/InsertarSubCategoria": {
                    InsertarSubCategoria(request, response);
                break;
            }

            case "/administration/BorrarSubCategoria": {
                    BorrarSubCategoria(request, response);
                break;
            }
            case "/administration/ModificarSubCategoria": {    
                    ModificarSubCategoria(request, response);          
            }
        }
    }

    private void ConsultarSubCategoria(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destino;
        try {
            subcategoriaDao subdao = new subcategoriaDao();
            request.setAttribute("Listar", subdao.readAll());
            destino = "ListSubCategoria.jsp";
        } catch (Exception e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "ListSubCategoria.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

    private void InsertarSubCategoria(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destino ;
        subcategoria sub = new subcategoria();
        sub.setDescripcion(request.getParameter("txtdesc"));
        sub.setCat_cod(request.getParameter("cbocat"));
        try {
            subcategoriaDao catlis = new subcategoriaDao();
            request.setAttribute("Insertar", catlis.create(sub));
            destino = "AddSubCategoria.jsp";
        } catch (Exception e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "AddSubCategoria.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

    private void BorrarSubCategoria(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String cod = request.getParameter("cod_sub");
            subcategoriaDao modlis = new subcategoriaDao();
            modlis.delete(cod);
            out.println(modlis.delete(cod));
        } catch (Exception e) {
            out.println("ERROR: " + e.getMessage());
        } finally {
            out.flush();
            out.close();
        }
    }

    private void ModificarSubCategoria(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException   {
        String destino;
        subcategoria mod = new subcategoria();
        mod.setSub_cod(request.getParameter("txtsub"));
        mod.setDescripcion(request.getParameter("cbocat"));
        mod.setCat_cod(request.getParameter("txtcod"));

        try {
            subcategoriaDao modlis = new subcategoriaDao();
            request.setAttribute("mensaje", modlis.update(mod));
            destino = "ConsultarSubCategoria";
        } catch (Exception e) {
            request.setAttribute("Mensaje", e.getMessage());
            destino = "UpdSubCategoria.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

}
