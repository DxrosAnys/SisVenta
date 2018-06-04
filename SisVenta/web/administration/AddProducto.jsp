<%-- 
    Document   : AddProducto
    Created on : 21-may-2018, 12:38:30
    Author     : Dxros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<body> 
    <title>Agregar Producto</title>
    <br/>
    <br/>
    <link href="../resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="../resources/js/jquery-1.12.4.js" type="text/javascript"></script>
  <script src="../resources/js/jquery-ui.js" type="text/javascript"></script>
    <!--    <div class="w3-container">  
            <div class="w3-row" style="width: 98%;">      
                <ol class="migmov breadcrumb col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <li><a href="principal.jsp">Inicio</a></li>
                    <li class="active">Registro de Productos</li>
                </ol>     
            </div>-->
    <div class="w3-row">
        <form method="POST" action="InsertarProducto" id="idformprod">
            <div>
                <label>Descripción:</label>
                <input type="text" id="id_desc" name="txtdesc" placeholder="Ingrese una descripcion">
            </div>
            <div>
                <label>Precio:</label>
                <input type="text" id="id_pre" name="txtpre" placeholder="Ingrese el precio">
            </div>
            <div>
                <label>Stock:</label>
                <input type="text" id="id_stk" name="txtstk" placeholder="Ingrese el stock">
            </div>
            <div>
                <label>Descuento:</label>
                <input type="text" id="id_dsct" name="txtdsct" placeholder="Ingrese el precio">
            </div>
            <div>
                <label>Fecha de caducidad de descuento:</label>
                <input type="text" id="datepicker" name="txtfcd" placeholder="Ingrese la fecha">
            </div>
            <div class="form-group col-xs-12 col-md-12">
                <div class="form-group">
                    <button type="submit" class="btn btn-warning center-block" >Agregar</button>
                </div>
            </div>
            <div class="form-group col-xs-12 col-md-12">
                <label class="w3-text-white">${requestScope.Insertar}</label>
            </div>
        </form>
    </div>
    <!--</div>-->
    <%--<%@include file="../includes/footer.jsp" %>--%>
    <script>
        $(function () {
            $("#datepicker").datepicker({dateFormat: 'dd-MM-yy'});
        });
    </script>
</body>
</html>
