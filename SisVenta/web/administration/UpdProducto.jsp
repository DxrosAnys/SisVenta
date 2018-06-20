
<<<<<<< HEAD
=======
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
>>>>>>> parent of 312b501... CALCULADO
<html>
    <head>
        <link href="../resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="../resources/js/jquery-1.12.4.js" type="text/javascript"></script>
        <link href="../resources/css/adm.css" rel="stylesheet" type="text/css"/>
        <script src="../resources/js/jquery-ui.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
                        <input type="text" id="datepicker" name="txtfcd" placeholder="dd/MM/yyyy" value="">
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
        <script>
            $(function () {
                $("#datepicker").datepicker({dateFormat: 'dd-MM-yy'});
            });
        </script>
    </body>
</html>
