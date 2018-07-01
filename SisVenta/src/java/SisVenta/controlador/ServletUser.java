/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.controlador;

import SisVenta.dao.usuarioDao;
import SisVenta.modelo.usuario;
import SisVenta.modelo.usuariopec;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
        String path = request.getServletPath();
        switch (path) {
            case "/RegistrarUsuario":
                RegistrarUsuario(request, response);
                break;
            case "/IniciarSession": {
                try {
                    IniciarSession(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(ServletUser.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
            }
            case "/administration/LogearAdmin": {
                LogearAdmin(request, response);              
            }
           break;
            case "/administration/DeslogearAdmin": {
                DeslogearAdmin(request, response);
                 
            }
           break;
        }
    }

    private void RegistrarUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        usuario usu = new usuario();
        String destino;
        usu.setNombre(request.getParameter("txtnom"));
        usu.setApellido(request.getParameter("txtape"));
        usu.setNick(request.getParameter("txtusu"));
        usu.setPass(request.getParameter("txtcon"));
        usu.setEmail(request.getParameter("txtcor"));
        usu.setDireccion(request.getParameter("txtdir"));
        usu.setCelular(request.getParameter("txtcel"));
        usu.setDNI(request.getParameter("txtdni"));
        String DNI = request.getParameter("txtdni");

        try {
            if (DNI == null) {
                request.setAttribute("mensaje", "Debe ingresar valores");
            } else {
                usuarioDao usudao = new usuarioDao();
                String msg = usudao.create(usu);
                request.setAttribute("mensaje", msg);
            }
            destino = "registroCliente.jsp";

        } catch (ClassNotFoundException | SQLException e) {
            request.setAttribute("mensaje", e.getMessage());
            destino = "registroCliente.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        rd.forward(request, response);
    }

    private void IniciarSession(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, ServletException, IOException {
        String destino = "index.jsp";
        String user = request.getParameter("usrname");
        String pass = request.getParameter("psw");
        try {
            usuarioDao dao = new usuarioDao();
            ArrayList<usuario> al = dao.UserValidate(user, pass);
            for (usuario x : al) {
                System.out.print(x.getNick());
                if (x.getNick().equals(user) && x.getPass().equals(pass)) {
                    HttpSession sesion = request.getSession(true);
                    sesion.setAttribute("nombre", x.getNombre());
                    sesion.setAttribute("apellido", x.getApellido());
                    request.setAttribute("mensaje", "Bienvenido");
                    RequestDispatcher rd = request.getRequestDispatcher(destino);
                    rd.forward(request, response);
                }
            }
            request.setAttribute("mensaje", "Contraseña o Usuario incorrectos");
            RequestDispatcher rd = request.getRequestDispatcher(destino);
            rd.forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.getMessage();
        }
    }

    private void LogearAdmin(HttpServletRequest request, HttpServletResponse response) {
        String destino = "index.jsp";
        String user = request.getParameter("usrname");
        String pass = request.getParameter("psw");
        try {
            usuarioDao dao = new usuarioDao();
            usuariopec al = dao.UserAdmin(user, pass);
            if (al.getNick().equals(user) && al.getPass().equals(pass)) {
                HttpSession sesion = request.getSession(true);
                sesion.setAttribute("user", al.getNick());
                sesion.setAttribute("pass", al.getPass());
                sesion.setAttribute("nombre", al.getNombre());
                sesion.setAttribute("apellido", al.getApellido());
                destino = "principal.jsp";
            } else {
                request.setAttribute("mensaje", "Contraseña o Usuario incorrectos");
            }
            RequestDispatcher rd = request.getRequestDispatcher(destino);
            rd.forward(request, response);
        } catch (IOException | ClassNotFoundException | SQLException | ServletException e) {
            e.getMessage();
        }

    }

    private void DeslogearAdmin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.invalidate();// Se invalida la sesion (Logout)
        response.sendRedirect("index.jsp");
    }
}
