<%-- 
    Document   : ListProducto
    Created on : 21-may-2018, 9:43:49
    Author     : Dxros
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%--<%@include file="../includes/header.jsp" %>--%> 
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/jquery-1.10.2.min.js"></script>
 
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
            </tr>
        </thead>
        <tbody>
            <c:forEach var="pro" items="${requestScope.Listar}"></c:forEach>
        </tbody>
    </table>
</body>
</html>
