<%-- 
    Document   : UpdProducto
    Created on : 21-may-2018, 12:39:11
    Author     : Dxros
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="../resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="../resources/js/jquery-1.12.4.js" type="text/javascript"></script>
<script src="../resources/js/jquery-ui.js" type="text/javascript"></script>
<html>
    <%@include file="includes_admin/header_admin.jsp"%>
    <title>Modificar Producto</title>
    <br/>
    <br/>  
    <div class="w3-container">
        <div class="w3-row" style="width: 98%;">      
            <ol class="migmov breadcrumb col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <li><a href="principal.jsp">Inicio</a></li>
                <li><a href="ConsultarProducto">Modififcar de Productos</a></li>
                <li class="active">Modificar Producto</li>
            </ol>     
        </div>
        <div class="w3-row w3-center">
            <form method="POST" action="ModificarProducto" id="idformprod">
                <div class="w3-row">
                    <div class="col-xs-2 col-md-2 col-lg-2"></div>
                    <div class="col-xs-4 col-md-4 col-lg-4">
                        <div class="form-group w3-center">
                            <label class="control-label">CODIGO:</label>
                            <input type="text" id="id_cod" name="txtcod" value="<%=request.getParameter("cod_mod")%>">
                        </div>
                    </div>
                    <div class="col-xs-4 col-md-4 col-lg-4"> 
                        <div class="form-group w3-center">
                            <label class="control-label">DESCRIPCIÓN:</label>
                            <input type="text" id="id_desc" name="txtdesc" placeholder="Ingrese una descripcion" value="<%=request.getParameter("desc")%>">
                        </div>
                    </div>
                    <div class="col-xs-2 col-md-2 col-lg-2"></div>
                </div>
                <div class="w3-row">
                    <div class="col-xs-2 col-md-2 col-lg-2">
                    </div>
                    <div class="col-xs-4 col-md-4 col-lg-4"> 
                        <div class="form-group w3-center">
                            <label class="control-label">PRECIO:</label>
                            <input  class="form-control" type="text" id="id_pre" name="txtpre" placeholder="Ingrese el precio" value="<%=request.getParameter("pre")%>">
                        </div>
                    </div>
                    <div class="col-xs-4 col-md-4 col-lg-4"> 
                        <div class="form-group w3-center">
                            <label class="control-label">STOCK:</label>
                            <input class="form-control" type="text" id="id_stk" name="txtstk" placeholder="Ingrese el stock" value="<%=request.getParameter("stk")%>">
                        </div>
                    </div>
                    <div class="col-xs-2 col-md-2 col-lg-2">
                    </div>
                </div>
                <div class="w3-row">
                    <div class="col-xs-2 col-md-2 col-lg-2">
                    </div>
                    <div class="col-xs-4 col-md-4 col-lg-4"> 
                        <div class="form-group w3-center">
                            <label class="control-label">DESCUENTO</label>
                            <input class="form-control" type="text" id="id_dsct" name="txtdsct" placeholder="Ingrese el precio" value="<%=request.getParameter("des")%>">
                        </div>
                    </div>
                    <div class="col-xs-4 col-md-4 col-lg-4"> 
                        <div class="form-group w3-center">
                            <label class="control-label">FECHA DE CADUCIDAD DE DESCUENTO:</label>             
                            <input class="form-control" type="text" id="datepicker" name="txtfcd" placeholder="dd/MM/yyyy" value="">
                        </div>
                    </div>
                    <div class="col-xs-2 col-md-2 col-lg-2">
                    </div>
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
    </div>
    <%@include file="includes_admin/footer1_admin.jsp"%>
    <script>
        $(function () {
            $("#datepicker").datepicker({dateFormat: 'dd-MM-yy'});
        });
    </script>
</body>
</html>
