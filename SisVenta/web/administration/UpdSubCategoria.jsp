<%@page import="SisVenta.modelo.categoria"%>
<%@page import="SisVenta.dao.categoriaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Agregar SubCategoria</title>
<<<<<<< HEAD
        <br/>
        <br/>
        <script src="../resources/js/jquery-1.10.2.min.js" type="text/javascript"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">

        <!--    <div class="w3-container">  
                <div class="w3-row" style="width: 98%;">      
                    <ol class="migmov breadcrumb col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <li><a href="principal.jsp">Inicio</a></li>
                        <li class="active">Registro de Productos</li>
                    </ol>     
                </div>-->
        <div class="w3-row">
            <form method="POST" action="ModificarSubCategoria" id="idformprod">
                <div>
                    <label>Codigo:</label>
                    <input type="text" id="id_desc" name="txtcod" placeholder="Ingrese una codigo" value="<%=request.getParameter("sub_cod")%>">
                </div>
                <div>
                    <label>Descripción:</label>
                    <input type="text" id="id_desc" name="txtdesc" placeholder="Ingrese una descripcion" value="<%=request.getParameter("desc")%>">
                </div>
                <div>
                    <label>Categoria:</label>
                    <select id="select">
                        <%
                            categoriaDao x = new categoriaDao();
                            for (categoria es : x.readAll()) {
                                out.print("<option value=" + es.getCat_cod() + ">"
                                        + es.getDescripcion() );
                            }
                        %>
                    </select>
                </div>
                <div class="form-group col-xs-12 col-md-12">
                    <div class="form-group">
                        <button type="submit" class="btn btn-warning center-block" >Actualizar</button>
                    </div>
                </div>
                <div class="form-group col-xs-12 col-md-12">
                    <label class="w3-text-white">${requestScope.Insertar}</label>
                </div>
                <script type="text/javascript">
                    
                    $(document).ready(
    function(){
        var theValue = "<%=request.getParameter("cat_cod")%>";
        $('option[value=' + theValue + ']')
            .attr('selected',true);
    });
                </script>
                    
            </form>
=======
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../resources/css/adm.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <title>JSP Page</title>
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
                <form method="POST" action="ModificarSubCategoria" id="idformprod">
                    <div>
                        <label>Codigo:</label>
                        <input type="text" id="id_desc" name="txtcod" placeholder="Ingrese una codigo" value="<%=request.getParameter("sub_mod")%>">
                    </div>
                    <div>
                        <label>Descripción:</label>
                        <input type="text" id="id_desc" name="txtdesc" placeholder="Ingrese una descripcion" value="<%=request.getParameter("desc")%>">
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
                            <button type="submit" class="btn btn-warning center-block" >Actualizar</button>
                        </div>
                    </div>
                    <div class="form-group col-xs-12 col-md-12">
                        <label class="w3-text-white">${requestScope.Insertar}</label>
                    </div>
                </form>
            </div>
>>>>>>> ac39647c90858ec37e4a1a5ad4da7133eca47e02
        </div>
    </body>
</html>