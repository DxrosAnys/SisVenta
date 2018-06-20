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
        <title>Agregar SubCategoria</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../resources/css/adm.css" rel="stylesheet" type="text/css"/>
    </head>
    <body> 
        <div class="sidebar">
            <h2>YPOWER</h2>
            <ul>
                <li><a>Producto</a></li>
                <a href="ListProducto.jsp">Listar</a>
                <a href="AddProducto.jsp">Insertar</a>
                <a href="UpdProducto.jsp">Modificar</a>

                <li><a>Categorias</a></li>
                <a href="ListCategoria.jsp">Listar</a>
                <a href="AddCategoria  .jsp">Insertar</a>
                <a href="UpdCategoria.jsp">Modificar</a>

                <li><a>Marca</a></li>
                <a href="ListMarca.jsp">Listar</a>
                <a href="AddMarca.jsp">Insertar</a>
                <a href="UpdMarca.jsp">Modificar</a>               		
            </ul>
        </div>
        <div class="contenido abrir">
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
        </div>
    </body>
</html>
