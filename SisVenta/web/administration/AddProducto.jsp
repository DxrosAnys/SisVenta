
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body> 
    <title>Agregar Producto</title>
    <link href="../resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="../resources/js/jquery-1.12.4.js" type="text/javascript"></script>
    <script src="../resources/js/jquery-ui.js" type="text/javascript"></script>
    <link href="../resources/css/adm.css" rel="stylesheet" type="text/css"/>
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
    </div>
    <script>
        $(function () {
            $("#datepicker").datepicker({dateFormat: 'dd-MM-yy'});
        });


        $('.menu-bar').on('click', function () {
            $('.contenido').toggleClass('abrir');
        });
    </script>
</body>
</html>
