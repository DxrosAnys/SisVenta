<%-- 
    Document   : AddProducto
    Created on : 21-may-2018, 12:38:30
    Author     : Dxros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<%@include file="includes_admin/header_admin.jsp"%>
<title>Agregar Producto</title>
<br/>
<br/>
<div class="w3-container">
    <div class="w3-row" style="width: 98%;">      
            <ol class="migmov breadcrumb col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <li><a href="principal.jsp">Inicio</a></li>
                <li class="active">Registrar Producto</li>
            </ol>     
        </div>
    <div class="w3-row w3-center">
        <h2 class="tit2">Registrar Producto</h2> 
        <form method="POST" action="InsertarProducto" id="idformprod">
            <div class="w3-row">
                <div class="col-xs-2 col-md-2 col-lg-2">
                </div>
                <div class="col-xs-4 col-md-4 col-lg-4">
                    <div class="form-group w3-center">
                        <label  class="control-label" for="descripcion">DESCRIPCION:</label>
                        <input class="form-control" type="text" id="id_desc" name="txtdesc" placeholder="Ingrese una descripcion">
                    </div>
                </div>
                <div class="col-xs-4 col-md-4 col-lg-4"> 
                    <div class="form-group w3-center">
                        <label class="control-label" for="precio">PRECIO:</label>
                        <input class="form-control" type="text"  id="id_pre" name="txtpre" placeholder="Ingrese el precio">
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
                        <label class="control-label" for="stock">STOCK:</label>
                        <input class="form-control" type="text" id="id_stk" name="txtstk" placeholder="Ingrese el stock">
                    </div>
                </div>
                <div class="col-xs-4 col-md-4 col-lg-4"> 
                    <div class="form-group w3-center">
                        <label class="control-label" for="descuento">DESCUENTO:</label>
                        <input class="form-control" type="text" id="id_dsct" name="txtdsct" placeholder="Ingrese el precio">
                    </div>
                </div>
                <div class="col-xs-2 col-md-2 col-lg-2">
                </div>
            </div>
            <div class="w3-row">
                <div class="col-xs-4 col-md-4 col-lg-4">
                </div>
                <div class="col-xs-4 col-md-4 col-lg-4"> 
                    <div class="form-group w3-center">
                        <label class="control-label" for="fecha descuento">FECHA DE CADUCIDAD DE DESCUENTO:</label>
                        <input class="form-control" type="text" id="datepicker" name="txtfcd" placeholder="Ingrese la fecha">
                    </div>
                </div>
                <div class="col-xs-4 col-md-4 col-lg-4">
                </div>
            </div>
            <div class="form-group col-xs-12 col-md-12">
                <div class="form-group">
                    <button type="submit" class="btn btn-success center-block" >Registrar</button>
                </div>
            </div>
            <div class="form-group col-xs-12 col-md-12">
                <label class="w3-text-white">${requestScope.Insertar}</label>
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
