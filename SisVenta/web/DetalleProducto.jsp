<%-- 
    Document   : DetalleProducto
    Created on : 18-jul-2018, 21:22:08
    Author     : Dxros
--%>

<%@page import="SisVenta.modelo.modelo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <%@include file="includes/header.jsp" %>
    <title>Detalle de Producto</title>
    <br/>
    <br/>
    <div id="content" class="w3-text-white">
        <div class="migcon w3-container" style="width: 98%;">      
            <div class="w3-row">
                <ol class="migmov breadcrumb col-xs-12 col-md-12">
                    <li><a href="index.jsp">Inicio</a></li>
                    <li class="active"><a href="ConsultarCategoria">Catalogo de Productos</a></li>
                    <li class="active">Detalle de Producto</li>
                </ol>  
            </div>    
        </div>
        <main class="container" role="main" style="width: 100%;">
             <%List<modelo> lis = (List<modelo>) request.getAttribute("BuscarMod");
                                for (modelo c : lis) {%>
            <div class="row">
                <c:forEach  var="md" items="${requestScope.BuscarMod}">
                    <h3 class="titulo col-xs-12 col-md-12 no-padding-left no-padding-right">${md.descripcion}</h3>
                </c:forEach>
                <hr class="titulo3 style1 col-xs-12 col-md-12 no-padding-left no-padding-right">
            </div>  
            <div class="row">
                <div class="cajadpgal col-xs-12 col-md-12 col-lg-12">
                    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                        <div class="carousel-inner">                
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="resources/img/modelo/<%=c.getMod_cod()%>.jpg"  height="500" width="350">
                            </div>
                            <%!  String modelo = "";%>
                            <%      for (int i = 1; i < 4; i++) {%>
                            <div class="carousel-item">
                                <%modelo = c.getMod_cod() + i;%>
                                <img  class="d-block w-100" src="resources/img/modcarousel/<%=modelo%>.jpg" height="500" width="350" />
                            </div>
                            <%}
                                }%>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>  
            </div>  
            <br>
            <div class="row">
                <div class="cajadpdat col-xs-12 col-md-12 col-lg-12">
                    <div class="rdattop row no-margin-left no-margin-right">
                        <div class="cdattop  col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                            <div class="cdattop dere col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <form id="carrito" method="POST" action="AñadirCarrito">                             
                                    <c:forEach  var="x" items="${requestScope.BuscarMod}">
                                        <div class="col-xs-3 col-md-3 col-lg-3" >
                                            <div class="form-group">
                                                <label class="control-label" for="txtCodigo">Codigo:</label> 
                                                <input class="form-control required " onKeyUp="this.value = this.value.toUpperCase();"
                                                       type="text" name="txtCodigo" id="txtCodigo" value="${x.mod_cod}" readonly/>
                                            </div>
                                        </div>
                                        <div class="col-xs-3 col-md-3 col-lg-3" >
                                            <div class="form-group">
                                                <label class="control-label" for="txtPrecio">Precio: (Soles)</label> 
                                                <input class="required form-control" onKeyUp="this.value = this.value.toUpperCase();"
                                                       type="text" name="txtPrecio" id="txtPrecio" value="${x.precio}" readonly/>
                                            </div>
                                        </div>
                                        <div class="col-xs-2 col-md-2 col-lg-2" >
                                            <div class="form-group">
                                                <label class="control-label" for="txtStock">Stock:</label>
                                                <input class="required form-control" onKeyUp="this.value = this.value.toUpperCase();"
                                                       type="text" name="txtStock" id="txtStock" value="${x.stock}" readonly/>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    <div class="col-xs-2 col-md-2 col-lg-2" >
                                        <div class="form-group">
                                            <label class="control-label" for="txtCantidad">Cantidad:</label>
                                            <input class="form-control" type="text" size="2" name="txtCantidad" id="txtCantidad" value="0" />
                                        </div>
                                    </div>                                   
                                    <div class="col-xs-2 col-md-2 col-lg-2" >
                                        <div class="form-group">
                                            <label class="control-label" for="cantcarc"></label>
                                            <button type="button" id="btncomprarc" name="btncomprarc" value="" class="btn btn-primary" onclick="valida()">
                                                <span class="glyphicon glyphicon-shopping-cart"></span> Agregar al Carrito
                                            </button>    
                                        </div>
                                    </div>               
                                </form>
                                 <%for (modelo c : lis) {%>
                                <script>
                                    function valida() {
                                        can = Number(carrito.txtCantidad.value);
                                        sk = Number(<%=c.getStock()%>);
                                        if (can > sk) {
                                            alert("stock no disponible");
                                            return;
                                        }
                                        carrito.action = "AñadirCarrito";
                                        carrito.submit();
                                    }
                                </script>  
                                 <%}%>
                            </div>
                        </div>
                    </div>
                    <div class="rdatbot row no-margin-left no-margin-right">
                        <div role="tabpanel" class="col-xs-12 col-sm-12 col-md-12 col-lg-12 tab-pane fade in active" id="tab2">
                            <div class="cajadpdat row no-margin-left no-margin-right">         
                                <div class=" cdattop desctit  text-center col-xs-12 col-sm-12 col-md-12 col-lg-12">DESCRIPCION</div>
                            </div>
                            <c:forEach  var="esp" items="${requestScope.BuscarEsp}">
                                <div class="rdesc row no-margin-left no-margin-right">         
                                    <div id="desc1" class="desc colorl4 desctit col-xs-12 col-sm-12 col-md-3 col-lg-3"> ${esp.spec1}</div>
                                    <div id="desc2" class="desc colorl4 col-xs-12 col-sm-12 col-md-6 col-lg-6"> ${esp.spec2}</div>
                                    <div id="desc3" class="desc colorl4 col-xs-12 col-sm-12 col-md-3 col-lg-3"></div> 
                                </div>  
                            </c:forEach>
                        </div>
                    </div>
                </div>  
            </div>
        </main>
    </div>
</div>
<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>
