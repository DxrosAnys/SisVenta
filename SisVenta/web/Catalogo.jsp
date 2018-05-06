<%-- 
    Document   : Catalogo
    Created on : 28-abr-2018, 19:14:24
    Author     : Dxros
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@include file="header.jsp" %>
<title>Catalogo de Producto</title>
<br/>
<br/>
<div id="content" class="w3-text-white">
    <div class="migcon w3-container" style="width: 98%;">      
        <div class="w3-row">
            <ol class="migmov breadcrumb col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <li><a href="index.jsp">Inicio</a></li>
                <li class="active">Catalogo de Productos</li>
            </ol>  
        </div>    
    </div>
    <main class=" w3-container" role="main" style="width: 100%;">
        <div class="w3-row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h3 class="titulo col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right">CATALOGO DE PRODUCTOS YPOWER</h3>  
                <hr class="titulo3 style1 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right">
            </div>
        </div>
        <div class="row no-margin-left no-margin-right">
            <div class="cpcol-izq col-xs-12 col-sm-12 col-md-3 col-lg-3">
                <h4 class="titulo titcpi1 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right"> Buscar por: </h4>
                <div class="col-izq col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <h5 class="titulo titcpi1 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right w3-text-black ">Categoria : </h5>
                    <div class="caja_con_ci col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right" style="">
                       
                            <select name="cbopccat" id="cbopccat" class="form-control caja_con_bod_menu_opc_select sele_multiple hidden-xs hidden-sm" style="" multiple="">
                                <c:forEach varStatus="cont"  var="cat" items="${requestScope.ListarCat}">
                                <option value="${cont.count}">${cat.cat_descripcion}</option>           
                                 </c:forEach>
                            </select> 
                       
                        <select name="cbopccat2" id="cbopccat2" class="form-control caja_con_bod_menu_opc_select visible-xs visible-sm" style="">
                            <option value="">::SELECCIONE::</option>     
                            <option value="17">CAMARAS WEB &amp; VIGILANCIA (40)</option>                
                            <option value="6" selected="">CASES &amp; ACCESORIOS (155)</option>                
                            <option value="33">CELULARES / TABLET &amp; ACCESORIOS (76)</option>                
                            <option value="10">CONECTIVIDAD / REDES (55)</option>                
                            <option value="23">CONSOLAS / JOYSTICK &amp; MANDOS (16)</option>                
                            <option value="4">DISCOS DUROS &amp; ACCESORIOS (123)</option>                
                            <option value="30">EQUIPOS PUNTO DE VENTA ( POS ) (9)</option>                
                            <option value="16">FUENTES DE PODER (61)</option>                
                            <option value="20">HOGAR (7)</option>                
                            <option value="8">IMPRESORAS &amp; ACCESORIOS (32)</option>                
                            <option value="13">LAPTOP &amp; ACCESORIOS (50)</option>                
                            <option value="25">LECTORES &amp; DISPOSITIVOS (10)</option>                
                            <option value="14">LICENCIAS &amp; SOFTWARE (38)</option>                
                            <option value="5">MEMORIAS / RAM / USB / SD (94)</option>                
                            <option value="31">MINI PCS / ALL IN ONE (8)</option>                
                            <option value="3">MONITOR / TV &amp; ACCESORIOS (119)</option>                
                            <option value="7">PLACA MADRE ( MOTHERBOARD ) (110)</option>                
                            <option value="19">POLOS / MOCHILAS / GAMER (41)</option>                
                            <option value="0">PROCESADORES &amp; COMPLEMENTOS (102)</option>                
                            <option value="12">PROYECTORES &amp; ACCESORIOS (28)</option>                
                            <option value="29">SILLAS / GAMING (9)</option>                
                            <option value="21">SONIDO &amp; PARLANTES (193)</option>                
                            <option value="32">SUMINISTRO / TINTAS / CARTUCHOS (102)</option>                
                            <option value="22">TABLETA DIGITALIZADORA (7)</option>                
                            <option value="9">TARJETAS DE VIDEO (59)</option>                
                            <option value="1">TECLADOS / MOUSE / PAD MOUSE / KIT (209)</option>                
                            <option value="2">UPS ESTABILIZADOR &amp; SUPRESOR (32)</option>                  
                        </select>


                    </div>
                    <hr class="titulo2 style2 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right">

                    <h5 class="titulo titcpi1 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right w3-text-black">Sub-Categoria : </h5>
                    <div class="caja_con_ci col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right" style="" id="cont1">          
                        <input type="hidden" name="cbopcsub2" id="cbopcsub2" value="68">
                        <div class="multiselect" id="cbopcsub">

                            <!--subcate por defecto-->    
                            <!--para inicio-->                             <!--para inicio-->
                            <label><input class="chkoption" type="checkbox" name="chkoption[]" id="chkoption" value="62"><span>CASE CON FUENTE DE PODER (21)</span></label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label class="multiselect-on"><input class="chkoption" type="checkbox" name="chkoption[]" id="chkoption" value="68" checked=""><span>CASE SIN FUENTE / GAMER (97)</span></label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label><input class="chkoption" type="checkbox" name="chkoption[]" id="chkoption" value="136"><span>COOLER PARA CASE &amp; COMPLEMENTOS (36)</span></label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label><input class="chkoption" type="checkbox" name="chkoption[]" id="chkoption" value="80"><span>MINI CASE CON FUENTE DE PODER (1)</span></label>


                            <!--subcate por defecto-->

                        </div>            

                    </div>     
                    <hr class="titulo2 style2 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right">

                    <h5 class="titulo titcpi1 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right w3-text-black" >Marca <input class="chkoption2all" type="checkbox" name="chkoption2all[]" id="chkoption2all" value="999997" style="/*display: none;*/"></h5>
                    <div class="caja_con_ci col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right" style="" id="cont2">          
                        <input type="hidden" name="cbopcmar2" id="cbopcmar2" value="207">
                        <div class="multiselect2" id="cbopcmar">

                            <!--marca por defecto-->    
                            <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption20"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="216">AEROCOOL (2)</label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption21"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="13">ANTRYX (4)</label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption22"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="169">COOLER MASTER (9)</label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption23"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="135">CORSAIR (22)</label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption24"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="245">COUGAR       (1)</label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption25"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="117">DEEP COOL (9)</label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption26"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="183">EVGA (4)</label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption27"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="243">GAMBYTE              (6)</label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption28"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="231">GAMEMAX        (1)</label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption29"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="148">GIGABYTE (1)</label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption210"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="256">IN WIN (6)</label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption211"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="38">NZXT (18)</label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption212"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="232">TEROS (1)</label>
                            <!--<hr class="separa2 style2">-->              <!--para inicio-->                             <!--para inicio-->
                            <label id="lbloption213" class="multiselect-on"><input class="chkoption2" type="checkbox" name="chkoption2[]" id="chkoption2" value="207" checked="">THERMALTAKE (13)</label>


                            <!--marca por defecto-->

                        </div>              

                    </div>

                    <!--/////////-->
                    <hr class="titulofin style2 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding-left no-padding-right"> <!--/////////-->

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
                                    <c:forEach varStatus="cont" var="md" items="${requestScope.ListarMod}">
                                        <tr width="208.86" height="366.46"class="cptr col-xs-6 col-sm-4 col-md-3 col-lg-3 <c:if test="${cont.count % 2 ==0}">odd</c:if> <c:if test="${cont.count % 2 !=0}">even</c:if>" role="row">
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>
