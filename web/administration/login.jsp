<%-- 
    Document   : login
    Created on : 25-jun-2018, 12:58:09
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
        <link href="../resources/css/w3.css" rel="stylesheet" type="text/css"/>
        <link href="../resources/css/main.css" rel="stylesheet" type="text/css"/>

        <link href="../resources/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../resources/bootstrap-3.3.7-dist/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>

        <link href="../resources/css/tablestyle.css" rel="stylesheet" type="text/css"/>

        <script src="../resources/js/bootstrap.min.js"></script>
        <script src="../resources/js/jquery-1.10.2.min.js"></script>

    </head>
    <body background="../resources/img/general/adminfondo.jpg" >
        <br>
        <br>
        <br>
        <%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
        %>
        <div class="w3-container w3-animate-left" >
            <div id="id01" class="w3-content w3-center w3-border  backcolorl3" style="max-width:500px ; background-color: #FFFFFF">
                <div class="w3-center">
                    <h3 class="tit colorl1"><b>LOGIN ADMIN</b></h3>
                    <img src="../resources/img/general/e1.png" alt="Avatar" style="width:25%; height: 30%" class="w3-circle w3-margin-top">
                </div>
                <div class="w3-container">
                    <form   method="POST" action="LogearAdmin">
                        <div class="w3-section">
                            <label class="colorl3"><b>Usuario</b></label>
                            <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Ingresa tu usuario" name="usrname" required>
                            <label class="colorl3"><b>Contraseña</b></label>
                            <input class="w3-input w3-border" type="text" placeholder="Ingresa tu contraseña" name="psw" required>
                            <button class="w3-button w3-block w3-blue w3-section w3-padding" type="submit">Ingresar</button>
                        </div>
                    </form>
                </div>
                <div class="w3-container w3-border-top w3-padding-small w3-light-grey">
                    <div class="col-xs-12 col-md-6 col-lg-6">
                        <p id="mensaje" class="w3-red" >${requestScope.mensaje}</p>
                    </div>
                    <div class="col-xs-12 col-md-6 col-lg-6">
                        <span class="w3-right w3-padding w3-hide-small">Olvidaste la <a href="#">contraseña?</a></span>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
