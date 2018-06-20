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
    <%--<%@include file="../includes/header.jsp" %>--%> 
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <script src="../resources/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../resources/js/jquery-1.10.2.min.js" type="text/javascript"></script>

    <table id="tableProd" class="target">
        <thead>
            <tr>
                <th>Codigo</th>
                <th>Descripcion</th>
                <th>Precio</th>
                <th>Stock</th>
                <th>Descuento</th>
                <th>Fecha Limite</th>
                <th>Fecha Registro</th>
                <th width="5">Modificar</th>
                <th width="5">Eliminar</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="pro" items="${requestScope.Listar}">
                <tr>
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
    <p id="mensaje">${requestScope.mensaje}</p>
    <script>
        $(document).ready(function () {
            $(document).on("click", "#DelRegistro", function () {
                var cod_mod = $(this).val();
                var url_ = "BorrarProducto?cod=" + cod_mod;
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
