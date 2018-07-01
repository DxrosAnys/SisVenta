<%@page import="SisVenta.modelo.usuariopec"%>
<%@page import="java.util.ArrayList"%>
<%@page import="SisVenta.modelo.usuario"%>
<%@page import="SisVenta.dao.usuarioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link href="../resources/css/w3.css" rel="stylesheet" type="text/css"/>
    <link href="../resources/css/main.css" rel="stylesheet" type="text/css"/>

    <link href="../resources/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="../resources/bootstrap-3.3.7-dist/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>

    <link href="../resources/css/tablestyle.css" rel="stylesheet" type="text/css"/>

    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/jquery-1.10.2.min.js"></script>

</head>
<%
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    HttpSession obj = request.getSession(false);
    usuarioDao dao = new usuarioDao();
    if (obj.getAttribute("user") == null && obj.getAttribute("getPass") == null) {
        String pag = "login.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    String correo = (String) obj.getAttribute("user");
    String contra = (String) obj.getAttribute("pass");
    usuariopec al = dao.UserAdmin(correo, contra);
%>
<body background="">
    <div class="w3-top">
        <div class="w3-bar w3-white w3-card" id="myNavbar">
            <a href="principal.jsp" class="w3-bar-item w3-button w3-white">YPOWER</a>
            <li class="w3-bar-item w3-white">Bienvenido, ${sessionScope['nombre']} ${sessionScope['apellido']}</li>
            <div class="w3-right w3-hide-medium w3-hide-small">
                <div class="w3-dropdown-hover w3-hide-small">
                    <button class="w3-button" title="Notifications">Productos <i class="fa fa-caret-down"></i></button>     
                    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
                        <a href="ConsultarProducto" class="w3-bar-item w3-button" ><i class="fa fa-list"></i> LISTAR</a>
                        <a href="AddProducto.jsp" class="w3-bar-item w3-button" ><i class="fa fa-plus-circle"></i> INSERTAR</a> 
                    </div>
                </div> 
                <div class="w3-dropdown-hover w3-hide-small">
                    <button class="w3-button" title="Notifications">Categoria <i class="fa fa-caret-down"></i></button>     
                    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
                        <a href="ConsultarCategoria" class="w3-bar-item w3-button"><i class="fa fa-list"></i> LISTAR</a>
                        <a href="AddCategoria.jsp" class="w3-bar-item w3-button"><i class="fa fa-plus-circle"></i> INSERTAR</a> 
                    </div>
                </div> 
                <div class="w3-dropdown-hover w3-hide-small">
                    <button class="w3-button" title="Notifications">Marca <i class="fa fa-caret-down"></i></button>     
                    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
                        <a href="ConsultarMarca" class="w3-bar-item w3-button" ><i class="fa fa-list"></i> LISTAR</a>
                        <a href="AddMarca.jsp" class="w3-bar-item w3-button" ><i class="fa fa-plus-circle"></i> INSERTAR</a> 
                    </div>
                </div> 
                <div class="w3-dropdown-hover w3-hide-small">
                    <button class="w3-button" title="Notifications">SubCategoria <i class="fa fa-caret-down"></i></button>     
                    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
                        <a href="ConsultarSubCategoria" class="w3-bar-item w3-button" ><i class="fa fa-list"></i> LISTAR</a>
                        <a href="AddSubCategoria.jsp" class="w3-bar-item w3-button" ><i class="fa fa-plus-circle"></i> INSERTAR</a> 
                    </div>
                </div >
                <div class="w3-dropdown-hover w3-hide-small">
                    <a href="DeslogearAdmin" class="w3-bar-item w3-button"><i class="glyphicon glyphicon-log-out"></i> Logout</a>
                </div>
            </div>
        </div>           
    </div>
    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium w3-hide-small" onclick="w3_open()">
        <i class="fa fa-bars"></i>
    </a>