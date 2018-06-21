<%-- 
    Document   : ListMarca
    Created on : 01-jun-2018, 1:16:56
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
                <li class="active">Listado de Marcas</li>
            </ol>     
        </div>
        <div class="w3-row w3-center">
            <div class="col-xs-11 col-md-11 col-lg-11">
            <table id="tableProd"  class="w3-table w3-table-all table-hover">
                <thead>
                    <tr>
                        <th>CODIGO</th>
                        <th>DESCRIPCION</th>
                        <th class="text-center">MODIFICAR</th>
                        <th class="text-center">ELIMINAR</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="mar" items="${requestScope.Listar}">
                        <tr class="w3-hover-text-blue">
                            <td>${mar.mar_cod}</td>
                            <td>${mar.descripcion}</td>
                            <td class="text-center">
                                <a href="UpdMarca.jsp?cod_mar=${mar.mar_cod}&desc=${mar.descripcion}">
                                    <button id="UdpRegistro" > 
                                        <img src="../resources/img/general/updcon.png" height="15" width="15"/>
                                    </button>                             
                                </a>
                            </td>
                            <td class="text-center">
                                <button id="DelRegistro" value="${mar.mar_cod}">
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
                var cod_mar = $(this).val();
                var url_ = "BorrarMarca?cod_mar=" + cod_mar;
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
