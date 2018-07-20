<%-- 
    Document   : carritoCompra
    Created on : 19-jul-2018, 9:22:47
    Author     : Dxros
--%>

<%@page import="SisVenta.modelo.carritos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="includes/header.jsp" %>
    <title>Carrito de Compra</title>
    <br/>
    <br/>
    <div id="content" class="w3-text-white">
        <div class="migcon w3-container" style="width: 98%;">      
            <div class="w3-row">
                <ol class="migmov breadcrumb col-xs-12 col-md-12">
                    <li><a href="index.jsp">Inicio</a></li>
                    <li class="active"><a href="ConsultarCategoria">Catalogo de Productos</a></li>
                    <li class="active">Carrito de Compra</li>
                </ol>  
            </div>    
        </div>
        <div class="row">
            <div class="cajacarpre col-xs-12 col-md-12 col-lg-12">
                <form class="form-horizontal white-box validform formulario" id="formulario" name="formulario" method="post" action="">

                    <h3>CARRITO DE COMPRAS </h3>
                    <table width="100%">
                        <tr>
                            <td>COMPRADOR</td>
                        </tr>
                        <tr>
                            <td ><div >DESCRIPCION</div></td>
                            <td ><div >PRECIO</div></td>
                            <td ><div >CANTIDAD</div></td>
                            <td ><div >DESCUENTO</div></td>
                            <td ><div >TOTAL</div></td>
                            <td ><div >ELIMINAR</div></td>
                        </tr>
                        <%-- Los productos que tenemos en la sesion que se llama carrito --%>
                        <%
                             HttpSession sesion = request.getSession();
  ArrayList<carritos> lista;
 lista= (ArrayList<carritos>) sesion.getAttribute("carrito");
 
//                           lista = (ArrayList<carritos>) sesion.getAttribute("carrito");
                            int cont = 0;
                            double total = 0;
                            double tot1 = 0;
                            if (lista != null) {
                                for (carritos d : lista) {
                                    cont++;
                                    tot1 = (d.getPrecio() * d.getCant()) - d.getDescuento();
                                    total = total + tot1;
                        %>
                        <tr bgcolor=""  >
                            <td><div style="text-align: right"><%= d.getDescripcion()%></div></td>
                            <td><div style="text-align: right"><%= d.getPrecio()%></div></td>
                            <td><div style="text-align: right"><%= d.getCant()%></div></td>
                            <td><div style="text-align: right"><%= d.getDescuento()%></div></td>
                            <td><div style="text-align: right"><%= tot1%></div></td>
                            <td><center><input name="Submit2" type="button" value="" id="eliminar" title="Quitar Producto" /></center></td>
                        </tr>
                        <%
                                }
                            }
                            if (cont > 0) {
                        %>
                        <tr >
                            <td bgcolor="#021E4F" colspan="4"><b><div style="text-align: center; color : #fff;">TOTAL</div></b></td>
                            <td bgcolor="#021E4F"><b><div style="text-align: right; color : #fff;"><%=total%></div></b></td>
                            <td bgcolor="#021E4F"></td>
                        </tr>
                        <%
                        } else {
                        %>
                        <tr >
                            <td colspan="6"><center>No se agregaron productos al carrito</center></td>
                        </tr>
                        <%
                            }
                        %>
                        <tr >
                            <td colspan="6" align="center">
                                <br><input type="submit" <% if (cont == 0) {%>disabled<% }%> value="Registrar Venta" name="btnVenta" />
                                <input type="button" value="Salir" name="btnRegistrar" onclick="Salir();"/><br><br>
                            </td>
                        </tr>
                    </table>            
                </form>
            </div>
        </div>
    </div>
</body>
</html>
