/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.controlador;

import SisVenta.dao.modeloDao;
import SisVenta.modelo.carritos;
import SisVenta.modelo.modelo;
import java.io.IOException;
import java.io.PrintWriter;
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
public class ServletCarrito extends HttpServlet {

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
            case "/AñadirCarrito": {
                try {
                    AñadirCarrito(request, response);
                } catch (SQLException | ClassNotFoundException ex) {
                    Logger.getLogger(ServletCarrito.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

    }

    private void AñadirCarrito(HttpServletRequest request, HttpServletResponse response) 
            throws SQLException, ClassNotFoundException, IOException, ServletException
            {
        //Obtenemos la sesion actual
        HttpSession sesion = request.getSession();
        ArrayList<carritos> carrito;
        //Si no existe la sesion creamos el carrito de compras
        if (sesion.getAttribute("carrito") == null) {
            carrito = new ArrayList<>();
        } else {
            carrito = (ArrayList<carritos>) sesion.getAttribute("carrito");
        }
        //Obtenemos el producto que deseamos añadir al carrito
        String id = request.getParameter("txtCodigo");
        Double pre = Double.parseDouble(request.getParameter("txtPrecio"));
        int stock = Integer.parseInt(request.getParameter("txtStock"));
        int cant = Integer.parseInt(request.getParameter("txtCantidad"));
        modelo p = modeloDao.obtenerProducto(id);
        //Creamos un detalle para el carrtio
        carritos d = new carritos();
        //Obtenemos los valores de la caja de texto
        d.setId_venta(id);
        d.setDescripcion(p.getDescripcion());
        d.setPrecio(pre);
        d.setStock(stock);
        d.setCant(cant);
        //Sirva para saber si tenemos agregado el producto al carrito de compras
        int indice = -1;
        //recorremos todo el carrito de compras
        for (int i = 0; i < carrito.size(); i++) {
            carritos det = carrito.get(i);
            if (p.getMod_cod().equals(det.getId_venta())) {
                //Si el producto ya esta en el carrito, obtengo el indice dentro
                //del arreglo para actualizar al carrito de compras
                indice = i;
                break;
            }
        }
        if (indice == -1) {
            //Si es -1 es porque voy a registrar
            carrito.add(d);
        } else {
            //Si es otro valor es porque el producto esta en el carrito
            //y vamos actualizar la 
            carrito.set(indice, d);
        }
        //Actualizamos la sesion del carrito de compras
        sesion.setAttribute("carrito", carrito);
        //Redireccionamos al formulario de culminar la venta
                PrintWriter out = response.getWriter();
//        for(carritos c:carrito){
//        out.print(c.getDescripcion());
//        }
      
    RequestDispatcher rd = request.getRequestDispatcher("/carritoCompra.jsp");
        rd.forward(request, response);
            }
}
