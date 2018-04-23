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
    <body background="img/bg-powerful.jpg">
        <div class="w3-top">
            <div class="w3-bar w3-white w3-card" id="myNavbar">
                <a href="#home" class="w3-bar-item w3-button w3-wide">YPower</a>
                <!-- Right-sided navbar links -->
                <div class="w3-right w3-hide-small">
                    <a href="#about" class="w3-bar-item w3-button">CATALOGO</a>
                    <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> PRODUCTOS</a>
                    <a href="#work" class="w3-bar-item w3-button"><i class="fa fa-th"></i> MARCA</a>
                    <a href="#pricing" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> PROMOCIONES</a>
                    <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>OFERTAS</a>
                    <a href="#usuario" class="w3-bar-item w3-button"><i class="fa fa-user"></i>NOVEDADES</a>
                    <a href="nosotros.jsp" class="w3-bar-item w3-button"><i class="fa fa-users"></i>NOSOTROS</a>
                    <a href="nosotros.jsp" class="w3-bar-item w3-button"><i class="fa fa-users"></i>CONTACTANOS</a>
                    <a href="registroC.jsp" class="w3-bar-item w3-button"><i class="fa fa-users"></i>REGISTRO</a>
                </div>
            </div>
        </div>
        <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
            <i class="fa fa-bars"></i>
        </a>
        <nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
            <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> PRODUCTOS</a>
            <a href="#work" class="w3-bar-item w3-button"><i class="fa fa-th"></i> MARCA</a>
            <a href="#pricing" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> PROMOCIONES</a>
            <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>OFERTAS</a>
            <a href="#usuario" class="w3-bar-item w3-button"><i class="fa fa-user"></i>NOVEDADES</a>
            <a href="nosotros.jsp" class="w3-bar-item w3-button"><i class="fa fa-users"></i>NOSOTROS</a>
            <a href="#" class="w3-bar-item w3-button"><i class="fa fa-users"></i>CONTACTANOS</a>
            <a href="registroC.jsp" class="w3-bar-item w3-button">REGISTRO</a>
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
        <hr class="featurette-divider">
        <div class="container">

            <div class="row text-center">

                <div class="col-md-4 col-sm-6 hero-feature">
                    <div class="thumbnail">
                        <img src="img/a1.jpg" alt="" width="500" >
                        <div class="caption">
                            <br/>
                            <h3>Comparte tu expertiencia</h3>
                            <p>Se parte de nuestra comunidad y comparte tus viajes con nosotros e interactua con otros usuarios</p>
                            <!-- <p>
                               <a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-default">More Info</a>
                             </p> -->
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6 hero-feature">
                    <div class="thumbnail">
                        <img src="img/a1.jpg" alt="" width="500">
                        <div class="caption">
                            <br/>
                            <h3>Lugares Turisticos</h3>
                            <p>Te brindamos informacion acerca de los lugares turisticos del peru</p>

                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6 hero-feature">
                    <div class="thumbnail">
                        <img src="img/a1.jpg" alt="" width="500">
                        <div class="caption">
                            <h3> turismo</h3>
                            <p>Viajar al Perú es despertar sueños pendientes, es conectarse con uno mismo, es adentrarse en 5 mil años de historia viva.</p>
                        </div>
                    </div>
                </div>
            </div>
            <br/>
            <hr/>
            <div class="row featurette">
                <div class="col-md-6">
                    <h2 class="featurette-heading">FOTOS Y VIDEOS</h2>
                    <p class="lead">                   </p>
                    <p class="lead" align=justify>En Page Adventure te invitamos a compartir con nosotros , tus fotos y videos de sus experiencias vividas en las principales atracciones de cada destino del Perú.</p>
                </div>

                <div class="col-md-6 ">
                    <iframe width="550" height="250" align="center" src="https://www.youtube.com/embed/skjWfV31enU" frameborder="0" allowfullscreen></iframe>
                </div>
            </div>


            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-6">
                    <h2 class="featurette-heading">INFORMACION</h2>
                    <p class="lead">                   </p>
                    <p class="lead" align=justify>Encontraras historias divertidas e interesantes de otras personas donde podras comentarlas y
                        puntuarlas,dando a escojer cual es la mejor historia. En la cual podras disfrutar con el mayor realismo el recorrido por los diversos destinos de Perú</p>
                </div>
                <div class="col-md-6">
                    <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500 x 500" src="img/a1.jpg" data-holder-rendered="true">
                </div>
            </div>



            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7 col-md-push-5">
                    <h2 class="featurette-heading">ATREVETE A CONOCER EL PERÚ</h2>
                    <p class="lead">                   </p>
                    <p class="lead" align=justify >Viajar al Perú es despertar sueños pendientes, es conectarse con uno mismo, es adentrarse en 5 mil años de historia viva. Prepárate para dominar olas sobre 
                        caballitos de totora, tablas de surf y disfrutar de puestas del sol en oasis con protectoras dunas. En la sierra, con el sonido de quenas en el viento, respirarás el aire puro de los Andes y contemplarás con devoción la armonía del hombre con la naturaleza en Machu Picchu. En la selva, el río Amazonas te dará la bienvenida con delfines rosados y te invitará a bailar, a ser libre. Recorrer las regiones del Perú es disfrutar de una gastronomía mestiza, única y reconocida en el mundo. Si el corazón te dice que sí, atrévete a visitarlo.</p>
                </div>
                <div class="col-md-5 col-md-pull-7">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16137391.29080895!2d-84.04311271442191!3d-9.082632022081835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c850c05914f5%3A0xf29e011279210648!2zUGVyw7o!5e0!3m2!1ses!2spe!4v1501448746544" width="450" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div><!-- /.container -->

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
