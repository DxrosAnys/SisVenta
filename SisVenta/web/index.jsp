<%-- 
    Document   : index
    Created on : 19-abr-2018, 10:58:11
    Author     : Dxros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link href="css/w3.css" rel="stylesheet" type="text/css"/>

        <title>JYpower</title>
    </head>
    <body background="img/bg-powerful.jpg">
        <div class="w3-top">
            <div class="w3-bar w3-white w3-card" id="myNavbar">
                <a href="#home" class="w3-bar-item w3-button w3-wide">YPower</a>
                <!-- Right-sided navbar links -->
                <div class="w3-right w3-hide-small">
                    <a href="#about" class="w3-bar-item w3-button">ABOUT</a>
                    <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> TEAM</a>
                    <a href="#work" class="w3-bar-item w3-button"><i class="fa fa-th"></i> WORK</a>
                    <a href="#pricing" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> PRICING</a>
                    <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>CONTACTANOS</a>
                    <a href="#usuario" class="w3-bar-item w3-button"><i class="fa fa-user"></i>USUARIO</a>
                    <a href="registroC.jsp" class="w3-bar-item w3-button"><i class="fa fa-users"></i>REGISTRO</a>
                    <a href="#about" class="w3-bar-item w3-button">CATALOGO</a>
                    <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> PRODUCTOS</a>
                    <a href="#work" class="w3-bar-item w3-button"><i class="fa fa-th"></i> MARCA</a>
                    <a href="#pricing" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> PROMOCIONES</a>
                    <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>OFERTAS</a>
                    <a href="#usuario" class="w3-bar-item w3-button"><i class="fa fa-user"></i>NOVEDADES</a>
                    <a href="#" class="w3-bar-item w3-button"><i class="fa fa-users"></i>ABOUT</a>
                    <a href="" class="w3-bar-item w3-button"><i class="fa fa-users"></i>CONTACTANOS</a>
                    <a href="registroU.jsp" class="w3-bar-item w3-button">REGISTRO</a>
                </div>
            </div>
        </div>
        <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
            <i class="fa fa-bars"></i>
        </a>
        <nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
            <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
            <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
            <a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">TEAM</a>
            <a href="#work" onclick="w3_close()" class="w3-bar-item w3-button">WORK</a>
            <a href="#pricing" onclick="w3_close()" class="w3-bar-item w3-button">PRICING</a>
            <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">CONTACTANOS</a>
            <a href="#usuario" onclick="w3_close()" class="w3-bar-item w3-button">USUARIO</a>
            <a href="registroC.jsp" class="w3-bar-item w3-button">REGISTRO</a>

            <a href="#about" class="w3-bar-item w3-button">CATALOGO</a>
                    <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> PRODUCTOS</a>
                    <a href="#work" class="w3-bar-item w3-button"><i class="fa fa-th"></i> MARCA</a>
                    <a href="#pricing" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> PROMOCIONES</a>
                    <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>OFERTAS</a>
                    <a href="#usuario" class="w3-bar-item w3-button"><i class="fa fa-user"></i>NOVEDADES</a>
                    <a href="#" class="w3-bar-item w3-button"><i class="fa fa-users"></i>ABOUT</a>
                    <a href="" class="w3-bar-item w3-button"><i class="fa fa-users"></i>CONTACTANOS</a>
                    <a href="registroU.jsp" class="w3-bar-item w3-button">REGISTRO</a>

        </nav>

        <div class="container">            
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="img/b1.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="img/b4.jpg"  alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="img/b3.jpg" alt="Third slide">
                    </div>
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

        <footer class="w3-center w3-black w3-padding-64">
            <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
            <div class="w3-xlarge w3-section">
                <i class="fa fa-facebook-official w3-hover-opacity"></i>
                <i class="fa fa-instagram w3-hover-opacity"></i>
                <i class="fa fa-snapchat w3-hover-opacity"></i>
                <i class="fa fa-pinterest-p w3-hover-opacity"></i>
                <i class="fa fa-twitter w3-hover-opacity"></i>
                <i class="fa fa-linkedin w3-hover-opacity"></i>
            </div>
            <p>Powered by Ypower</p>
        </footer>
    </body>
</html>
