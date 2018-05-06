<%-- 
    Document   : header
    Created on : 28-abr-2018, 22:05:24
    Author     : Dxros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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

        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/jquery-1.10.2.min.js"></script>
    </head>
    <body background="resources/img/general/bg-powerful.jpg">
        <div class="w3-top">
            <div class="w3-bar w3-white w3-card" id="myNavbar">
                <a href="index.jsp" class="w3-bar-item w3-button w3-white">YPOWER</a>
                <div class="w3-right w3-hide-medium">
                    <a href="ConsultarProducto" class="w3-bar-item w3-button"><i class="fa fa-bookmark"></i>CATAGOLO</a>
                    <a href="producto.jsp"class="w3-bar-item w3-button"><i class="fa fa-product-hunt"></i>PRODUCTOS</a>
                    <a href="promo.jsp"class="w3-bar-item w3-button"><i class="fa fa-gift"></i>PROMOCIONES</a>
                    <a href="oferta.jsp"class="w3-bar-item w3-button"><i class="fa fa-cart-plus"></i>OFERTAS</a>
                    <a href="novedades.jsp"class="w3-bar-item w3-button"><i class="fa fa-area-chart"></i>NOVEDADES</a>
                    <a href="nosotros.jsp"class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>NOSOTROS</a>
                    <a href="registroCliente.jsp"class="w3-bar-item w3-button"><i class="fa fa-users"></i>REGISTRO</a>
                    <button href="login.jsp"class="w3-bar-item w3-button" onclick="document.getElementById('id01').style.display = 'block'"><i class="fa fa-user"></i>USUARIO</button>
                </div>
            </div>           
        </div>
        <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
            <i class="fa fa-bars"></i>
        </a>
        <nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
            <a href="#catalago" class="w3-bar-item w3-button"><i class="fa fa-user"></i>CATALOGO</a>
            <a href="#work" class="w3-bar-item w3-button"><i class="fa fa-th"></i>PRODUCTOS</a>
            <a href="#pricing" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> PROMOCIONES</a>
            <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>OFERTAS</a>
            <a href="#usuario" class="w3-bar-item w3-button"><i class="fa fa-user"></i>NOVEDADES</a>
            <a href="nosotros.jsp" class="w3-bar-item w3-button"><i class="fa fa-users"></i>NOSOTROS</a>
            <a href="Registro" class="w3-bar-item w3-button"><i class="fa fa-users"></i>REGISTRO</a>
            <a href="Logear" class="w3-bar-item w3-button"><i class="fa fa-user"></i>USUARIO</a>
        </nav>

        <div id="id01" class="w3-modal">
            <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">

                <div class="w3-center"><br>
                    <span onclick="document.getElementById('id01').style.display = 'none'" class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
                    <img src="resources/img/general/e1.png" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
                </div>

                <form class="w3-container" action="/action_page.php">
                    <div class="w3-section">
                        <label><b>Usuario</b></label>
                        <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Ingresa tu usuario" name="usrname" required>
                        <label><b>Contraseña</b></label>
                        <input class="w3-input w3-border" type="text" placeholder="Ingresa tu conteseña" name="psw" required>
                        <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Ingresar</button>
                        <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> Recuerdame
                    </div>
                </form>

                <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
                    <button onclick="document.getElementById('id01').style.display = 'none'" type="button" class="w3-button w3-red">Cancelar</button>
                    <span class="w3-right w3-padding w3-hide-small">Olvide la <a href="#">contraseña?</a></span>
                </div>

            </div>
        </div>
