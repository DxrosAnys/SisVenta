<html>
    <head>
        <meta charset="UTF-8">
        <title>Document</title>

        <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
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
                <a href="AddCategoria.jsp">Insertar</a>
                <a href="UpdCategoria.jsp">Modificar</a>

                <li><a>Marca</a></li>
                <a href="ListMarca.jsp">Listar</a>
                <a href="AddMarca.jsp">Insertar</a>
                <a href="UpdMarca.jsp">Modificar</a>               		
            </ul>
        </div>
        <div class="contenido abrir">
            <img src="amazon.png" alt="" class="menu-bar"> 
        </div>
        <script>
            $('.menu-bar').on('click', function () {
                $('.contenido').toggleClass('abrir');
            });

        </script>


    </body>
</html>
