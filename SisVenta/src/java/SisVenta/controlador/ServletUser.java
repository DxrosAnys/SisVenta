/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.controlador;

import SisVenta.dao.usuarioDao;
import SisVenta.modelo.usuario;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dxros
 */
public class ServletUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws javax.servlet.ServletException
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String path=request.getServletPath();
       switch(path){
           case "/RegistrarUsuario":
               RegistrarUsuario(request,response);
       }
    }

    private void RegistrarUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       usuario usu=new usuario();
       String destino;
       java.util.Date fecha = new Date();
       usu.setNombre(request.getParameter("txtnom"));
       usu.setApellido(request.getParameter("txtape"));      
       usu.setNick(request.getParameter("txtusu"));
       usu.setPass(request.getParameter("txtcon"));
       usu.setEmail(request.getParameter("txtcor"));
       usu.setDireccion(request.getParameter("txtdir"));
       usu.setCelular(request.getParameter("txtcel"));
       usu.setDNI(request.getParameter("txtdni"));
       String DNI =request.getParameter("txtdni");
       
       try {
           if (DNI!=null){
       usuarioDao usudao=new usuarioDao();
       String msg=usudao.create(usu);
       request.setAttribute("mensaje", msg);
           }else{
        request.setAttribute("mensaje", "Debe ingresar valores");   
           }
       destino= "registroC.jsp";
       
       } catch (ClassNotFoundException | SQLException e) {
            request.setAttribute("mensaje", e.getMessage());
            destino = "registroC.jsp";
        }
       RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }
}
