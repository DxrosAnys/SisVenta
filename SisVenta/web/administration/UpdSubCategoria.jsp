<%-- 
    Document   : UpdSubCategoria
    Created on : 02-jun-2018, 18:20:07
    Author     : Dxros
--%>

<%@page import="SisVenta.modelo.categoria"%>
<%@page import="SisVenta.dao.categoriaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="includes_admin/header_admin.jsp"%>
    <title>Modificar SubCategoria</title>
    <br/>
    <br/>
    <div class="w3-container">
        <div class="w3-row" style="width: 98%;">      
            <ol class="migmov breadcrumb col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <li><a href="principal.jsp">Inicio</a></li>
                <li><a href="ConsultarSubCategoria">Listado de SubCategorias</a></li>
                <li class="active">Modificar SubCategoria</li>
            </ol>     
        </div>
        <div class="w3-row w3-center">
            <form method="POST" action="ModificarSubCategoria" id="idformprod">
                <div class="w3-row">
                    <div class="col-xs-2 col-md-2 col-lg-2"></div>
                    <div class="col-xs-4 col-md-4 col-lg-4">
                        <div class="form-group w3-center">
                            <label class="control-label">Codigo:</label>
                            <input class="form-control" type="text" id="id_desc" name="txtcod" placeholder="Ingrese una codigo" value="<%=request.getParameter("sub_mod")%>">
                        </div>
                    </div>
                    <div class="col-xs-4 col-md-4 col-lg-4">
                        <div class="form-group w3-center">
                            <label class="control-label">Descripción:</label>
                            <input class="form-control" type="text" id="id_desc" name="txtdesc" placeholder="Ingrese una descripcion" value="<%=request.getParameter("desc")%>">
                        </div>
                    </div>
                    <div class="col-xs-2 col-md-2 col-lg-2"></div>
                </div>
                <div class="w3-row">      
                    <div class="col-xs-4 col-md-4 col-lg-4"></div>
                    <div class="col-xs-4 col-md-4 col-lg-4">
                        <div class="form-group w3-center">  
                            <label class="control-label">Categoria:</label>
                            <select class="selected">
                                <%
                                    categoriaDao x = new categoriaDao();
                                    for (categoria es : x.readAll()) {
                                        out.print("<option value=" + es.getCat_cod() + ">"
                                                + es.getDescripcion() + "");
                                    }
                                %>
                            </select>
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
                    <label class="w3-text-white">${requestScope.Insertar}</label>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
