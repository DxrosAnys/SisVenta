<%-- 
    Document   : ListSubCategoria
    Created on : 02-jun-2018, 18:19:53
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
        <div class="w3-row">      
            <ol class="migmov breadcrumb col-xs-11 col-sm-11 col-md-11 col-lg-11">
                <li><a href="principal.jsp">Inicio</a></li>
                <li class="active">Listado de SubCategorias</li>
            </ol>     
        </div>
        <div class="w3-row w3-center">
            <div class="col-xs-11 col-md-11 col-lg-11">
            <table id="tableProd" class="w3-table w3-table-all table-hover">
                <thead>
                    <tr>
                        <th>CODIGO</th>
                        <th>DESCRIPCION(SUB)</th>
                        <th>CODIGO</th>
                        <th>DESCRIPCION(CAT)</th>
                        <th class="text-center" >MODIFICAR</th>
                        <th class="text-center" >ELIMINAR</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="sub" items="${requestScope.Listar}">
                        <tr class="w3-hover-text-blue">
                            <td>${sub.sub_cod}</td>
                            <td>${sub.sbdescripcion}</td>
                            <td>${sub.cat_cod}</td>
                            <td>${sub.descripcion}</td>
                            <td class="text-center">
                                <a href="UpdSubCategoria.jsp?sub_mod=${sub.sub_cod}&desc=${sub.descripcion}">
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
        </div>
    </div>
</div>
<p id="mensaje">${requestScope.mensaje}</p>
<script>
    $(document).ready(function () {
        $(document).on("click", "#DelRegistro", function () {
            var cod_sub = $(this).val();
            var url_ = "BorrarSubCategoria?cod_sub=" + cod_sub;
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