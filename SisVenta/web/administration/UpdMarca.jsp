<%-- 
    Document   : UpdMarca
    Created on : 01-jun-2018, 1:16:37
    Author     : Dxros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../resources/css/adm.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
<<<<<<< HEAD
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
                <form method="POST" action="ModificarMarca" id="idformprod">
                    <div>
                        <label>Codigo:</label>
                        <input type="text" id="id_cod" name="txtcod" value="<%=request.getParameter("cod_mar")%>">
                    </div>
                    <div>
                        <label>Descripción:</label>
                        <input type="text" id="id_desc" name="txtdesc" placeholder="Ingrese una descripcion" value="<%=request.getParameter("desc")%>">
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
=======
        <h1>Hello World!</h1>
>>>>>>> parent of 312b501... CALCULADO
    </body>
</html>
