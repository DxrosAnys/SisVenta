<%-- 
    Document   : ListSubCategoria
    Created on : 02-jun-2018, 18:19:53
    Author     : Dxros
--%>
<%@page import="java.util.List"%>
<%@page import="SisVenta.modelo.subcategoria"%>
<%@page import="java.util.ArrayList"%>
<%@page import="SisVenta.dao.subcategoriaDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%--<%@include file="../includes/header.jsp" %>--%> 
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <script src="../resources/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../resources/js/jquery-1.10.2.min.js" type="text/javascript"></script>
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
    <table id="tableProd" class="target">
        <thead>
            <tr>
                <th>CodSubCat</th>
                <th>Descripcion</th>
                <th>CodCat</th>
                <th>Descripcion</th>
                <th width="5">Modificar</th>
                <th width="5">Eliminar</th>
            </tr>
        </thead>
        <tbody>
            <c:set var="count" value="0" scope="page" />
            <c:forEach var="sub" items="${requestScope.Listar}">
                <tr>
                    <td>${sub.sub_cod}</td>
                    <td>${sub.sbdescripcion}</td>
                    <td colspan="">${a.cat_cod}</td>
                    <td colspan="">${sub.descripcion}</td>
                    <td class="text-center">
                        <a href="UpdSubCategoria.jsp?sub_cod=${sub.sub_cod}&desc=${sub.sbdescripcion}&cat_cod=${sub.cat_cod}">
                            <button id="UdpRegistro" > 
                                <img src="../resources/img/general/updcon.png" height="15" width="15"/>
                            </button>                             
                        </a>
                    </td>
                    <td class="text-center">
                        <button id="DelRegistro" value="${sub.sub_cod}">
                            <img src="../resources/img/general/delcon.png" height="15" width="15" />
                        </button>                                  

                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
        
    <p id="mensaje">${requestScope.mensaje}</p>
    </div>
    <script>
        $(document).ready(function () {
            $(document).on("click", "#DelRegistro", function () {
                var cod_sub = $(this).val();
                var url_ = "BorrarSubCategoria?cod=" + cod_sub;
                $.ajax({
                    url: url_,
                    type: "get",
                    cache: false,
                    async: true,
                    success: function (result) {
                        $("#mensaje").html(result);
                    }
                });
            });
        });
    </script>
</body>
</html>
