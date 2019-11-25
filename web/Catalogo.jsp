<%-- 
    Document   : Catalogo
    Created on : 28-abr-2018, 19:14:24
    Author     : Dxros
--%>

<%@page import="SisVenta.dao.categoriaDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
    <%@include file="includes/header.jsp" %>
    <title>Catalogo de Producto</title>
    <br/>
    <br/>
    <div id="content" class="w3-text-white">
        <div class="migcon w3-container" style="width: 98%;">      
            <div class="w3-row">
                <ol class="migmov breadcrumb col-xs-12 col-md-12">
                    <li><a href="index.jsp">Inicio</a></li>
                    <li class="active">Catalogo de Productos</li>
                </ol>  
            </div>    
        </div>
        <main class=" w3-container" role="main" style="width: 100%;">
            <div class="w3-row">
                <div class="col-xs-12 col-md-12 ">
                    <h3 class="titulo col-xs-12 col-md-12 no-padding-left no-padding-right">CATALOGO DE PRODUCTOS YPOWER</h3>  
                    <hr class="titulo3 style1 col-xs-12 col-md-12 no-padding-left no-padding-right">
                </div>
            </div>
            <div class="row no-margin-left no-margin-right">
                <div class="cpcol-izq col-xs-12 col-md-3 ">
                    <h4 class="titulo titcpi1 col-xs-12 col-md-12  no-padding-left no-padding-right"> Buscar por: </h4>
                    <div class="col-izq col-xs-12 col-md-12 ">
                        <h5 class="titulo titcpi1 col-xs-12 col-md-12  no-padding-left no-padding-right w3-text-black ">Categoria : </h5>
                        <div class="caja_con_ci col-xs-12 col-md-12  no-padding-left no-padding-right" style="">
                            <select name="cbopccat" id="cbopccat" class="form-control caja_con_bod_menu_opc_select sele_multiple hidden-xs hidden-sm" style="" multiple="">
                                <c:forEach var="cat" items="${requestScope.ListarCat}">
                                    <option value="${cat.cat_cod}">${cat.descripcion}</option>           
                                </c:forEach>  
                            </select> 
                        </div>             
                        <h5 class="titulo titcpi1 col-xs-12 col-md-12 no-padding-left no-padding-right w3-text-black">Sub-Categoria : </h5>
                        <div class="caja_con_ci col-xs-12 col-md-12 no-padding-left no-padding-right" style="" id="cont1">          
                            <hr class="titulo3 style1 col-xs-12  col-md-12 no-padding-left no-padding-right">
                            <select name="cbopcsub" id="cbopcsub" class="target form-control caja_con_bod_menu_opc_select sele_multiple1 hidden-xs hidden-sm" style="" multiple="">

                            </select>           
                        </div>     
                        <h5 class="titulo titcpi1 col-xs-12 col-md-12  no-padding-left no-padding-right w3-text-black" >Marca <input class="chkoption2all" type="checkbox" name="chkoption2all[]" id="chkoption2all" value="999997" style="/*display: none;*/"></h5>
                        <div class="caja_con_ci col-xs-12 col-md-12  no-padding-left no-padding-right" style="" id="cont2">          
                            <hr class="titulo3 style1 col-xs-12 col-md-12  no-padding-left no-padding-right">
                            <select name="cbopcmar" id="cbopcmar" class="target form-control caja_con_bod_menu_opc_select sele_multiple2 hidden-xs hidden-sm" style="" multiple="">

                            </select>               
                        </div>
                    </div>
                </div>
                <div class="cpcol-der col-xs-12 col-sm-12 col-md-9 col-lg-9 no-padding-left no-padding-right"> 
                    <div class="caja_con_cdpro col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tabpcprod" class style>
                            <div id="tabla_wrapper" class="dataTables_wrapper no-footer">
                                <script src="http://www.impacto.com.pe/web/datatable/js/table.js"></script>
                                <link rel="stylesheet" href="http://www.impacto.com.pe/web/datatable/js/jquery.dataTables.css">
                                <script type="text/javascript" src="http://www.impacto.com.pe/web/datatable/js/jquery.dataTables.min.js"></script>
                                <table id="tabla" class="display dataTable no-footer w3-text-black w3-black" role="grid" width="100%" cellspacing="0" aria-describedy="tabla_info">
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
                                            <tr width="208.86" height="366.46"  data-href='ConsultarEspecificacion?codigo=${md.mod_cod}' class="clickable-row cptr col-xs-6 col-sm-4 col-md-3 col-lg-3 <c:if test="${cont.count % 2 ==0}">odd</c:if> <c:if test="${cont.count % 2 !=0}">even</c:if>" role="row">
                                                    <td class="cptd sorting_1 w3-center" width="180" height="350">
                                                        <div class="cpcajaprod">                         
                                                                <img src="resources/img/modelo/${md.mod_cod}.jpg" alt=""  height="200" width="160" class="w3-hover-opacity"/>                   
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
                                <script type="text/javascript">
                                    $(document).ready(function ($) {
                                        $(".clickable-row").click(function () {
                                            window.location = $(this).data("href");
                                        });
                                    });</script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <script src="resources/js/ajaxjs.js" type="text/javascript"></script>
    </div>
    <jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>
