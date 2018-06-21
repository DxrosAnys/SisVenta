<%-- 
    Document   : UpdMarca
    Created on : 01-jun-2018, 1:16:37
    Author     : Dxros
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="includes_admin/header_admin.jsp"%>
    <title>Modificar Marca</title>
    <br/>
    <br/>  
    <div class="w3-container">
        <div class="w3-row" style="width: 98%;">      
            <ol class="migmov breadcrumb col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <li><a href="principal.jsp">Inicio</a></li>
                <li><a href="ConsultarMarca">Listado de Marcas</a></li>
                <li class="active">Modificar Marca</li>
            </ol>     
        </div>
        <div class="w3-row w3-center">
            <form method="POST" action="ModificarMarca" id="idformmar">
                <div class="w3-row">
                    <div class="col-xs-4 col-md-4 col-lg-4"></div>
                    <div class="col-xs-4 col-md-4 col-lg-4">
                        <div class="form-group w3-center">
                            <label class="control-label" for="codigo">Codigo:</label>
                            <input class="form-control" type="text" id="id_cod" name="txtcod" value="<%=request.getParameter("cod_mar")%>">
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
