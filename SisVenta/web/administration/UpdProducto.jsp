<%-- 
    Document   : UpdProducto
    Created on : 21-may-2018, 12:39:11
    Author     : Dxros
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="w3-row">
            <form method="POST" action="ModificarProducto" id="idformprod">
                <div>
                    <label>Codigo:</label>
                    <input type="text" id="id_cod" name="txtcod" value="<%=request.getParameter("cod_mod")%>">
                </div>
                <div>
                    <label>Descripción:</label>
                    <input type="text" id="id_desc" name="txtdesc" placeholder="Ingrese una descripcion" value="<%=request.getParameter("desc")%>">
                </div>
                <div>
                    <label>Precio:</label>
                    <input type="text" id="id_pre" name="txtpre" placeholder="Ingrese el precio" value="<%=request.getParameter("pre")%>">
                </div>
                <div>
                    <label>Stock:</label>
                    <input type="text" id="id_stk" name="txtstk" placeholder="Ingrese el stock" value="<%=request.getParameter("stk")%>">
                </div>
                <div>
                    <label>Descuento:</label>
                    <input type="text" id="id_dsct" name="txtdsct" placeholder="Ingrese el precio" value="<%=request.getParameter("des")%>">
                </div>
                <div>
                    <label>Fecha de caducidad de descuento:</label>
                    <input type="date" id="id_fcd" name="txtfcd" placeholder="Ingrese la fecha">
                </div>
                <div class="form-group col-xs-12 col-md-12">
                    <div class="form-group">
                        <button type="submit" class="btn center-block" >Actualizar</button>
                    </div>
                </div>
                <div class="form-group col-xs-12 col-md-12">
                    <label class="w3-text-white">${requestScope.mensaje}</label>
                </div>
            </form>
        </div>
    </body>
</html>
