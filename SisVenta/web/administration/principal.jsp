<!DOCTYPE html>
<html>
    <%@include file="includes_admin/header_admin.jsp"%>
    <title>Administración</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <br>
    <br>
    <div class="w3-container">
        <div class="w3-row">

            <div class="col-xs-12 col-md-6 col-lg-6 w3-center w3-panel w3-topbar w3-bottombar w3-border-red w3-pale-red"> 
                <form action="ServletGrafico" target="zona">                  
                    <button  type="submit" class="w3-button w3-button w3-black w3-round-large ">Mostrar Grafico</button>
                </form>
                <iframe name="zona" height="430" width="418" style="border:0px;">
                </iframe> 
            </div>
            <div class="col-xs-12 col-md-6 col-lg-6 w3-center w3-panel w3-topbar w3-bottombar w3-border-blue w3-pale-blue"> 
                <form action="graficos" target="zona">
                    <button  type="submit" class="w3-button w3-button w3-black w3-round-large ">Mostrar Grafico</button>
                </form>
                <iframe name="zona" height="430" width="418"  style=" border:0px;" >
                </iframe> 
            </div>
            <div class="col-xs-12 col-md-6 col-lg-6 w3-center w3-panel w3-topbar w3-bottombar w3-border-green w3-pale-green"> 
                <form action="graficos" target="zona">
                    <button  type="submit" class="w3-button w3-button w3-black w3-round-large ">Mostrar Grafico</button> 
                </form>
                <iframe name="zona" height="430" width="418"  class="badge embed-container " style="border:0px;">
                </iframe> 
            </div>
            <div class="col-xs-12 col-md-6 col-lg-6 w3-center w3-panel w3-topbar w3-bottombar w3-border-lime w3-pale-yellow"> 
                <form action="graficos" target="zona">

                    <button  type="submit" class="w3-button w3-button w3-black w3-round-large ">Mostrar Grafico</button>
                </form>
                <iframe name="zona" height="430" width="418"   style="border:0px;">
                </iframe> 
            </div>
        </div>
    </div>
    <br>
    <%@include file="includes_admin/footer_admin.jsp"%>
</body>
</html>