<%-- 
    Document   : UpdSubCategoria
    Created on : 02-jun-2018, 18:20:07
    Author     : Dxros
--%>

<%@page import="SisVenta.modelo.categoria"%>
<%@page import="SisVenta.dao.categoriaDao"%>
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
        </div>
    </body>
</html>
