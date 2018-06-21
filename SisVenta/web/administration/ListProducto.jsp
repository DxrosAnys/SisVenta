<%-- 
Document   : ListProducto
Created on : 21-may-2018, 9:43:49
Author     : Dxros
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="includes_admin/header_admin.jsp" %> 
    <br/>
    <br/>
    <div class="w3-container">
        <div class="w3-row w3-center">      
            <ol class="migmov breadcrumb col-xs-11 col-sm-11 col-md-11 col-lg-11">
                <li><a href="principal.jsp">Inicio</a></li>
                <li class="active">Listado de Productos</li>
            </ol>     
        </div>
        <div class="w3-row w3-center">
            <div class="col-xs-11 col-md-11 col-lg-11">
            <table id="tableProd"  class="w3-table w3-table-all table-hover" >
                <thead>
                    <tr>
                        <th>CODIGO</th>
                        <th>DESCRIPCION</th>
                        <th>PRECIO</th>
                        <th>STOCK</th>
                        <th>DESCUENTO</th>
                        <th>FEC. LIM. DESC.</th>
                        <th>FEC. REGISTRO</th>
                        <th width="5">MODIFICAR</th>
                        <th width="5">ELIMINAR</th>
                    </tr>
                </thead>
                <tbody class="w3-hover-">
                    <c:forEach var="pro" items="${requestScope.Listar}">
                        <tr class="w3-hover-text-blue">
                            <td>${pro.mod_cod}</td>
                            <td>${pro.descripcion}</td>
                            <td>${pro.precio}</td>
                            <td>${pro.stock}</td>
                            <c:choose>
                                <c:when test="${pro.descuento == null || pro.descuento == 0}">
                                    <td>null</td>
                                </c:when>
                                <c:otherwise>
                                    <td>${pro.descuento}</td>
                                </c:otherwise>
                            </c:choose>
                            <c:choose>
                                <c:when test="${pro.deadline == null}">
                                    <td>null</td>
                                </c:when>
                                <c:otherwise>
                                    <td>${pro.deadline}</td>
                                </c:otherwise>
                            </c:choose>              
                            <td>${pro.dateregister}</td>

                            <%--<fmt:parseDate value = "${pro.dateregister}" var = "parsedEmpDate" pattern = "dd-MM-yyyy" />--%>
                            <td class="text-center">
                                <a href="UpdProducto.jsp?cod_mod=${pro.mod_cod}&desc=${pro.descripcion}&pre=${pro.precio}&stk=${pro.stock}&des=${pro.descuento}&fec=${pro.deadline}">
                                    <button id="UdpRegistro" > 
                                        <img src="../resources/img/general/updcon.png" height="15" width="15"/>
                                    </button>                             
                                </a>
                            </td>
                            <td class="text-center">
                                <button id="DelRegistro" value="${pro.mod_cod}">
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
</div>
<p id="mensaje">${requestScope.mensaje}</p>
<script>
    $(document).ready(function () {
        $(document).on("click", "#DelRegistro", function () {
            var cod_mod = $(this).val();
            var url_ = "BorrarProducto?cod_mod=" + cod_mod;
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
