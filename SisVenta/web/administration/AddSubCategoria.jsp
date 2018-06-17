<%-- 
    Document   : AddSubcategoria
    Created on : 02-jun-2018, 18:19:28
    Author     : Dxros
--%>

<%@page import="SisVenta.dao.categoriaDao"%>
<%@page import="SisVenta.modelo.categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <title>Agregar SubCategoria</title>
        <br/>
        <br/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
                    <label>Categoria:</label>
                    <select>
                        <%
                            categoriaDao x = new categoriaDao();
                            for (categoria es : x.readAll()) {
                                out.print("<option value=" + es.getCat_cod() + ">"
                                        + es.getDescripcion() + "");
                            }
                        %>
                    </select>
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
    </body>
</html>
