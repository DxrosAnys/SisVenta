<%-- 
    Document   : UpdCategoria
    Created on : 01-jun-2018, 1:17:28
    Author     : Dxros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="includes_admin/header_admin.jsp" %>
    <br/>
    <br/>
    <div class="w3-container">
        <div class="w3-row w3-center ">           
            <ol class="migmov breadcrumb col-xs-11 col-sm-11 col-md-11 col-lg-11 ">
                <li><a href="principal.jsp">Inicio</a></li>
                <li><a href="ConsultarCategoria">Listado de Categorias</a></li>
                <li class="active">Modificar Categoria</li>
            </ol>
        </div>
        <div class="w3-row w3-center">
            <h2 class="tit2">Modificar Categoria</h2>
            <form method="POST" action="ModificarCategoria" id="idformcat">
                <div class="w3-row">
                    <div class="col-xs-4 col-md-4 col-lg-4"></div>
                    <div class="col-xs-4 col-md-4 col-lg-4">
                        <div class="form-group w3-center">
                            <label class="control-label" for="codigo">Codigo:</label>
                            <input class="form-control disabled" type="text" id="id_cod" name="txtcod" value="<%=request.getParameter("cat_mod")%>">
                        </div>
                    </div>
                    <div class="col-xs-4 col-md-4 col-lg-4"></div> 
                </div>
                <div class="w3-row">
                    <div class="form-group w3-center">
                        <div class="col-xs-4 col-md-4 col-lg-4"></div>
                        <div class="col-xs-4 col-md-4 col-lg-4">
                            <div class="form-group w3-center">
                                <label class="control-label" for="descripcion">Descripción:</label>
                                <input class="form-control" type="text" id="id_desc" name="txtdesc" placeholder="Ingrese una descripcion" value="<%=request.getParameter("desc")%>">
                            </div>
                        </div>
                        <div class="col-xs-4 col-md-4 col-lg-4"></div>
                    </div>
                </div>
                <div class="form-group col-xs-12 col-md-12">
                    <div class="form-group">
                        <button type="submit" class="btn btn-success center-block" >Actualizar</button>
                    </div>
                </div>
                <div class="form-group col-xs-12 col-md-12">
                    <label class="w3-text-white">${requestScope.mensaje}</label>
                </div>
            </form>
        </div>
    </div>
    <%@include file="includes_admin/footer1_admin.jsp"%>
</body>
</html>
