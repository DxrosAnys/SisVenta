<%-- 
    Document   : AddMarca
    Created on : 31-may-2018, 16:56:16
    Author     : Dxros
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="includes_admin/header_admin.jsp"%>
    <title>Agregar Marca</title>
    <br/>
    <br/> 
    <div class="w3-container">
        <div class="w3-row" style="width: 98%;">      
            <ol class="migmov breadcrumb col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <li><a href="principal.jsp">Inicio</a></li>
                <li class="active">Registrar Marca</li>
            </ol>     
        </div>
        <div class="w3-row w3-center">
            <h2 class="tit2">Registrar Marca</h2>      
            <form method="POST" action="InsertarMarca" id="idformmar">
                <div class="w3-row">
                    <div class="col-xs-4 col-md-4 col-lg-4">
                    </div>
                    <div class="col-xs-4 col-md-4 col-lg-4">
                        <div class="form-group w3-center">
                            <label class="control-label" for="descripcion">DESCRIPCIÓN:</label>
                            <input class="form-control" type="text" id="id_desc" name="txtdesc" placeholder="Ingrese una descripcion">
                        </div>
                    </div>
                    <div class="col-xs-4 col-md-4 col-lg-4">
                    </div>
                </div>
                <div class="form-group col-xs-12 col-md-12">
                    <div class="form-group">
                        <button type="submit" class="btn btn-success center-block" >Registrar</button>
                    </div>
                </div>
                <div class="form-group col-xs-12 col-md-12">
                    <label class="w3-text-white">${requestScope.Insertar}</label>
                </div>
            </form>
        </div>
    </div>
    <%@include file="includes_admin/footer1_admin.jsp"%>
</body>
</html>
