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
<div id="content" class="cont">
    <div class="migcon w3-container" style="width: 98%;">      
        <div class="row">
            <ol class="migmov breadcrumb col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <li><a href="index.jsp">Inicio</a> /</li>
                <li class="active">Catalogo de Productos</li>
            </ol>  
        </div>    
    </div>
    <main class=" w3-container" role="main" style="width: 100%;">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h3 class="titulo col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right">CATALOGO DE PRODUCTOS YPOWER</h3>  
                <hr class="titulo3 style1 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right">
            </div>
        </div>
        <div class="row no-margin-left no-margin-right">
            <div class="cpcol-izq col-xs-12 col-sm-12 col-md-3 col-lg-3">
                <h4 class="titulo titcpi1 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right"> Buscar por: </h4>
            </div>
            <div class="cpcol-der col-xs-12 col-sm-12 col-md-9 col-lg-9 no-padding-left no-padding-right"> 
                <div class="caja_con_cdpro col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="tabpcprod" class style>
      <div id="tabla_wrapper" class="dataTables_wrapper no-footer">
                        <script src="http://www.impacto.com.pe/web/datatable/js/table.js"></script>
                        <link rel="stylesheet" href="http://www.impacto.com.pe/web/datatable/js/jquery.dataTables.css">
                        <script type="text/javascript" src="http://www.impacto.com.pe/web/datatable/js/jquery.dataTables.min.js"></script>
                        <table id="tabla" class="display dataTable no-footer" role="grid" width="100%" cellspacing="0" aria-describedy="tabla_info">
                            <thead>
                                <tr style="display: none;" role="row">
                                    <th style="color: rgb(79, 139, 202); font-family: Calibri; font-size: 17px; text-align: center; width: 0px;" class="sorting_asc" tabindex="0" aria-controls="tabla" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Imagen: activate to sort column ascending">Imagen</th>
                                    <th style="color: rgb(79, 139, 202); font-family: Calibri; font-size: 17px; text-align: center; width: 0px;" class="sorting" tabindex="0" aria-controls="tabla" rowspan="1" colspan="1" aria-label="Codigo: activate to sort column ascending">Codigo</th>
                                    <th style="color: rgb(79, 139, 202); font-family: Calibri; font-size: 17px; text-align: center; width: 0px;" class="sorting" tabindex="0" aria-controls="tabla" rowspan="1" colspan="1" aria-label="Descripcion: activate to sort column ascending">Descripcion</th>
                                    <th style="color: rgb(79, 139, 202); font-family: Calibri; font-size: 17px; text-align: center; width: 0px;" class="sorting" tabindex="0" aria-controls="tabla" rowspan="1" colspan="1" aria-label="Stock: activate to sort column ascending">Stock</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach varStatus="cont" var="md" items="${requestScope.Listar}">
                                    <tr class="cptr col-xs-6 col-sm-4 col-md-3 col-lg-3 <c:if test="${cont.count % 2 ==0}">odd</c:if> <c:if test="${cont.count % 2 !=0}">even</c:if>" role="row">
                                            <td class="cptd sorting_1">
                                                <div class="cpcajaprod">                       
                                                        <img src="img/modelo/${md.mod_cod}.jpg" alt=""  height="192" width="168" class="w3-hover-opacity"/>                   
                                                <div class="nom">
                                                    <div class="tit">${md.descripcion}</div>                               
                                                    <div class="pre">S/. ${md.precio}</div>
                                                    <div class="sto">Stock ${md.stock}</div>
                                                    <div class="cod">${md.mod_cod}</div>
                                                </div>                                 
                                            </div>
                                        </td>  
                                        <td style="display: none;" ></td>
                                        <td style="display: none;" ></td>
                                        <td style="display: none;" ></td>
                                    </tr>
                                </c:forEach>        
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
                </div>
        </div>
    </main>
</div>
</body>
</html>
