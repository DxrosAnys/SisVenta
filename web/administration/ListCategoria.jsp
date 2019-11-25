<%-- 
    Document   : ListCategoria
    Created on : 01-jun-2018, 1:17:34
    Author     : Dxros
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <%@include file="includes_admin/header_admin.jsp" %> 
    <br/>
    <br/>
    <div class="w3-container">
        <div class="w3-row ">           
            <ol class="migmov breadcrumb col-xs-11 col-sm-11 col-md-11 col-lg-11 ">
                <li><a href="principal.jsp">Inicio</a></li>
                <li class="active">Listado de Categorias</li>
            </ol>
        </div>
        <div class="w3-row">
            <div class="col-xs-11 col-md-11 col-lg-11">
            <table id="tablecat"  class="w3-table w3-table-all table-hover">
                <thead>
                    <tr>
                        <th>CODIGO</th>
                        <th>DESCRIPCION</th>
                        <th class="text-center" >MODIFICAR</th>
                        <th class="text-center" >ELIMINAR</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="cat" items="${requestScope.Listar}">
                        <tr class="w3-hover-text-blue">
                            <td>${cat.cat_cod}</td>
                            <td>${cat.descripcion}</td>
                            <td class="text-center">
                                <a href="UpdCategoria.jsp?cat_mod=${cat.cat_cod}&desc=${cat.descripcion}">
                                    <button id="UdpRegistro" > 
                                        <img src="../resources/img/general/updcon.png" height="15" width="15"/>
                                    </button>                             
                                </a>
                            </td>
                            <td class="text-center">
                                <button id="DelRegistro" value="${cat.cat_cod}">
                                    <img src="../resources/img/general/delcon.png" height="15" width="15" />
                                </button>                                  
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
            <div class="col-lg-1"></div>
            </div>
    </div>
    <p id="mensaje">${requestScope.mensaje}</p>
    <script>
        $(document).ready(function () {
            $(document).on("click", "#DelRegistro", function () {
                var cod_cat = $(this).val();
                var url_ = "BorrarCategoria?cod_cat=" + cod_cat;
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
    <%@include file="includes_admin/footer_admin.jsp"%>
</body>
</html>

