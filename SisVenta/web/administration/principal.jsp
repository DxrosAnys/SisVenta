<!DOCTYPE html>
<html>
    <title>Administración</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <%@include file="includes_admin/header_admin.jsp"%>
    <br>
    <br>
    <div class="w3-container">
        <div class="w3-row">
            <div class="col-xs-12 col-md-6 col-lg-6 w3-center"> 
                <form action="graficos" target="zona">
                    ingrese año:<input name="tan">
                    <input type="submit">
                </form>
                <iframe name="zona" height="500" width="500">
                </iframe> 
            </div>
            <div class="col-xs-12 col-md-6 col-lg-6 w3-center"> 
                <form action="graficos" target="zona">
                    ingrese año:<input name="tan">
                    <input type="submit">
                </form>
                <iframe name="zona" height="500" width="500">
                </iframe> 
            </div>
            <div class="col-xs-12 col-md-6 col-lg-6 w3-center"> 
                <form action="graficos" target="zona">
                    ingrese año:<input name="tan">
                    <input type="submit">
                </form>
                <iframe name="zona" height="500" width="500">
                </iframe> 
            </div>
            <div class="col-xs-12 col-md-6 col-lg-6 w3-center"> 
                <form action="graficos" target="zona">
                    ingrese año:<input name="tan">
                    <input type="submit">
                </form>
                <iframe name="zona" height="500" width="500">
                </iframe> 
            </div>
        </div>
    </div>


    <%@include file="includes_admin/footer_admin.jsp"%>
</body>
</html>