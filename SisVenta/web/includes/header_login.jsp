<%-- 
    Document   : header_login
    Created on : 24-jun-2018, 22:17:22
    Author     : Dxros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link href="resources/css/w3.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/main.css" rel="stylesheet" type="text/css"/>

        <link href="resources/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="resources/bootstrap-3.3.7-dist/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>

        <link href="resources/css/tablestyle.css" rel="stylesheet" type="text/css"/>

        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="../resources/js/jquery-1.12.4.js" type="text/javascript"></script>
    </head>
    
    <body background="resources/img/general/bg-powerful.jpg">
        <div class="w3-top">
            <div class="w3-bar w3-white w3-card" id="myNavbar">
                <a href="index.jsp" class="w3-bar-item w3-button w3-white">YPOWER</a>
                <div class="w3-right w3-hide-medium">
                    <a href="ConsultarModelo" class="w3-bar-item w3-button"><i class="fa fa-bookmark"></i>CATAGOLO</a>
                    <a href="producto.jsp"class="w3-bar-item w3-button"><i class="fa fa-product-hunt"></i>PRODUCTOS</a>
                    <a href="promo.jsp"class="w3-bar-item w3-button"><i class="fa fa-gift"></i>PROMOCIONES</a>
                    <a href="oferta.jsp"class="w3-bar-item w3-button"><i class="fa fa-cart-plus"></i>OFERTAS</a>
                    <a href="novedades.jsp"class="w3-bar-item w3-button"><i class="fa fa-area-chart"></i>NOVEDADES</a>
                    <a href="nosotros.jsp"class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>NOSOTROS</a>   
                    <%HttpSession sesion = request.getSession();  %>
                    <li class="w3-bar-item"><%=sesion.getAttribute("apellido)"%>,<%=sesion.getAttribute("nombre")%> </li>                 
                </div>
            </div>           
        </div>
        <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
            <i class="fa fa-bars"></i>
        </a>
        </div>
