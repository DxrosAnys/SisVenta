<!DOCTYPE html>
<html>
    <title>W3.CSS Template</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    
    
    <style>
        .w3-sidebar a {font-family: "Roboto", sans-serif}
        body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
    </style>
    <body class="w3-content" style="max-width:1500px">      
            <nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar">
                <div class="w3-container w3-display-container w3-padding-16">
                    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
                    <h3 class="w3-wide"><b>YPOWER</b></h3>
                </div>      
                <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
                    <a onclick="myAccFunc()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
                        Productos<i class="fa fa-caret-down"></i></a>
                    <div id="demoAcc" class="w3-bar-block w3-hide w3-padding-large w3-medium">
                        <a href="#" class="w3-bar-item w3-button w3-light-grey"></i>Listar</a>
                        <a href="#" class="w3-bar-item w3-button">Modificar</a>
                        <a href="#" class="w3-bar-item w3-button">Insertar</a>
                    </div>
                    <a onclick="myAccFunc2()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn2">
                        Categorias<i class="fa fa-caret-down"></i></a>
                    <div id="demoAcc2" class="w3-bar-block w3-hide w3-padding-large w3-medium">
                        <a href="#" class="w3-bar-item w3-button w3-light-grey"></i>Listar</a>
                        <a href="#" class="w3-bar-item w3-button">Modificar</a>
                        <a href="#" class="w3-bar-item w3-button">Insertar</a>
                    </div>
                    <a onclick="myAccFunc3()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn3">
                        Marca<i class="fa fa-caret-down"></i>
                    </a>                     
                    <div id="demoAcc3" class="w3-bar-block w3-hide w3-padding-large w3-medium">
                        <a href="#" class="w3-bar-item w3-button w3-light-grey"></i>Listar</a>
                    </div>
            </nav>
       </div>
               
        <header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge"> 
            <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
        </header>
        <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>   
            
        
        <script>

                function myAccFunc() {
                    var x = document.getElementById("demoAcc");
                    if (x.className.indexOf("w3-show") == -1) {
                        x.className += " w3-show";
                    } else {
                        x.className = x.className.replace(" w3-show", "");
                    }
                }
                function myAccFunc2() {
                    var x = document.getElementById("demoAcc2");
                    if (x.className.indexOf("w3-show") == -1) {
                        x.className += " w3-show";
                    } else {
                        x.className = x.className.replace(" w3-show", "");
                    }
                }
                function myAccFunc3() {
                    var x = document.getElementById("demoAcc3");
                    if (x.className.indexOf("w3-show") == -1) {
                        x.className += " w3-show";
                    } else {
                        x.className = x.className.replace(" w3-show", "");
                    }
                }
                document.getElementById("myBtn").click();
                document.getElementById("myBtn2").click();
                document.getElementById("myBtn3").click();

                function w3_open() {
                    document.getElementById("mySidebar").style.display = "block";
                    document.getElementById("myOverlay").style.display = "block";
                }

                function w3_close() {
                    document.getElementById("mySidebar").style.display = "none";
                    document.getElementById("myOverlay").style.display = "none";
                }
            </script>

    </body>
</html>