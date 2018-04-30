<%-- 
    Document   : Catalogo
    Created on : 28-abr-2018, 19:14:24
    Author     : Dxros
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

    <%@include file="header.jsp" %>
    <body>
        <div class="w3-row-padding">
            <div class="w3-third w3-container w3-margin-bottom">
                <img src="img/d2.jpg" alt="Norway" style="width:90%" class="w3-hover-opacity">
                <div class="w3-container">
                    <p><h2 class="w3-text-white w3-center">HeadSet !!!</h2></p>
                    <p class="w3-text-white"align=justify>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
                </div>
            </div>
            <div class="w3-third w3-container">
                <img src="img/d3.jpeg" alt="Norway" style="width:90%" class="w3-hover-opacity">
                <div class="w3-container">
                    <p><h2 class="w3-text-white w3-center ">PC`s</h3></p>
                        <p class="w3-text-white"align=justify>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
                </div>
            </div>
        </div>
        <div class="w3-row-padding"> 
            <table>
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Descripcion</th>
                        <th>Precio</th>
                        <th>Stock</th>
                        <th>Descuento</th>
                        <th>Fecha Limite</th>
                        <th>Codigo</th>
                        <th>Codigo</th>
                        <th>Fecha Registro</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="md" items="${requestScope.Listar}">
                    <tr>
                        <td>${md.mod_cod}</td>
                         <td>${md.precio}</td>
                        <td>${md.stock}</td>
                        <td>${md.descripcion}</td>                     
                        <td>${md.descuento}</td>
                        <td>${md.deadline}</td>
                        <td>${md.mar_cod}</td>
                        <td>${md.cat_cod}</td>
                        <td>${md.dateregister}</td>
                    </tr>
                </c:forEach>    
                </tbody>
            </table>
        </div>
    </body>
</html>
