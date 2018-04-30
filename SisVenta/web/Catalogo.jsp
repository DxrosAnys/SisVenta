<%-- 
    Document   : Catalogo
    Created on : 28-abr-2018, 19:14:24
    Author     : Dxros
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@include file="header.jsp" %>
<br/>
<br/>
<body>
    <div class="row">
        <div class="cpcol-izq col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <h4 class="titulo titcpi1 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right"> Buscar por: </h4>
        </div>
        <div class="cpcol-der col-xs-12 col-sm-12 col-md-9 col-lg-9"> 
            <table>
                <tbody>
                    <tr class="col-xs-6 col-sm-4 col-md-3 col-lg-3" role="row">
                        <c:forEach var="md" items="${requestScope.Listar}">
                            <td class="w3-third w3-container cptd sorting_1">
                                <div class="w3-third text-center">
                                    <div><img src="img/img.modelo/${md.mod_cod}.jpg" alt=""  height="192" width="168" class="w3-hover-opacity"/>  </div>                   
                                    <div>${md.descripcion}</div>                               
                                    <div>S/. ${md.precio}</div>
                                    <div>Stock ${md.stock}</div>
                                    <div>${md.mod_cod}</div>
                                </div>
                            </td>                                
                        </c:forEach>        
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
