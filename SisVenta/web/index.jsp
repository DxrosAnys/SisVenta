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
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link href="css/w3.css" rel="stylesheet" type="text/css"/>
        <title>Ypower</title>
    </head>   
   <body  background="img/bg-powerful.jpg">
     
       <%@include file="header.jsp" %>
        <br/>
        <br/>
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

            <hr class="featurette-divider">
            <div class="container">
                
                <div class="w3-row-padding">
                    <div class="w3-third w3-container w3-margin-bottom">
                        <img src="img/d1.jpg" alt="Norway" style="width:90%" class="w3-hover-opacity">
                        <div class="w3-container">
                            <p><h2 class="w3-text-white w3-center">Mouse !</h2></p>
                            <p class="w3-text-white"align=justify>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
                        </div>
                    </div>
                    <div class="w3-third w3-container w3-margin-bottom">
                        <img src="img/d2.jpg" alt="Norway" style="width:90%" class="w3-hover-opacity">
                        <div class="w3-container">
                            <p><h2 class="w3-text-white w3-center">HeadSet !!!</h2></p>
                            <p class="w3-text-white"align=justify>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
                        </div>
                    </div>
                    <div class="w3-third w3-container">
                        <img src="img/d3.jpeg" alt="Norway" style="width:90%" class="w3-hover-opacity">
                        <div class="w3-container">
                            <p><h2 class="w3-text-white w3-center ">PC`s</h3></p>
                                <p class="w3-text-white"align=justify>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
                        </div>
                    </div>
                </div>

                <br/>
                <hr/>
                <div class="w3-center">          
                    <iframe width="700" height="500" align="center" src="https://www.youtube.com/embed/0ysHtVYcFgE" frameborder="0" allowfullscreen></iframe>
                </div>
                <hr class="featurette-divider">

                <div class="row featurette">
                    <div class="col-md-6">
                        <h2 class="featurette-heading w3-center w3-text-white">INFORMACION</h2>
                        <p class="lead">                   </p>
                        <p class="lead w3-text-white" align=justify>Encuentra numerosos tipos de componentes gaming y/o genericos a los mejores precios del mercado.En YPower tenemos todo los que necesitas.</p>
                    </div>
                    <div class="col-md-6">
                        <img class="featurette-image img-responsive center-block"  width="540" height="400" src="img/d4.jpg">
                    </div>
                </div>      
            </div>
        </div>
        <br>
        <br>
    <footer class="w3-center w3-black w3-padding-64">
        <a href="index.jsp" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
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
