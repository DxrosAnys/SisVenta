<%-- 
    Document   : registroU
    Created on : 19-abr-2018, 18:23:50
    Author     : Usuario
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

        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap-theme.css">
        <link rel="stylesheet" href="css/bootstrapValidator.css">

        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrapValidator.js"></script>
        <title>Registro</title>
    </head>
    <body background="img/bg-powerful.jpg">                
        <div class="w3-top">
            <div class="w3-bar w3-white w3-card" id="myNavbar">
                <a href="index.jsp" class="w3-bar-item w3-button w3-wide">YPower</a>
                <!-- Right-sided navbar links -->
                <div class="w3-right w3-hide-small">
                    <a href="#about" class="w3-bar-item w3-button">ABOUT</a>
                    <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> TEAM</a>
                    <a href="#work" class="w3-bar-item w3-button"><i class="fa fa-th"></i> WORK</a>
                    <a href="#pricing" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> PRICING</a>
                    <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>CONTACTANOS</a>
                    <a href="#usuario" class="w3-bar-item w3-button"><i class="fa fa-user"></i>USUARIO</a>                        
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
        </nav>  
        <p>--------------------------------------------------------------------------------</p>  
        <div class="container">                                  
            <h3 class="w3-text-white w3-center">REGISTRO DE CLIENTE</h3>
            <form action="USUARIO" id="id_form">

                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_nombre">Nombres</label>
                    <input class="form-control " type="text" id="id_nombre" name="nombre" placeholder="Ingrese el nombre">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_apellido">Apellidos</label>
                    <input class="form-control " type="text" id="id_apellido" name="apellido" placeholder="Ingrese el apellido">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_usuario">Usuario</label>
                    <input class="form-control " type="text" id="id_usuario" name="usuario" placeholder="Ingrese su usario">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_contraseña">Contraseña</label>
                    <input class="form-control " type="text" id="id_contraseña" name="contraseña" placeholder="Ingrese contraseña">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_correo">Correo electronico</label>
                    <input class="form-control " type="text" id="id_correo" name="correo" placeholder="Ingrese correo">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_direccion">Direccion</label>
                    <input class="form-control " type="text" id="id_direccion" name="direccion" placeholder="Ingrese su direccion">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_numero">Numero</label>
                    <input class="form-control " type="text" id="id_numero" name="numero" placeholder="Ingrese su Numero">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_dni">DNI</label>
                    <input class="form-control " type="text" id="id_dni" name="dni" placeholder="Ingrese su DNI">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-warning center-block" >Crear Usuario</button>
                </div>
            </form>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#id_form').bootstrapValidator({
                    message: 'This value is not valid',
                    feedbackIcons: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                    fields: {
                        
                        //valida registros
                        nombre: {
                            validators: {
                                notEmpty: {
                                    message: 'El nombre es un campo obligatorio'
                                },
                                regexp: {
                                    regexp: /^[A-Za-z ñÑ]+$/,

                                    message: 'Solo letras o espacios'

                                }
                            }
                        },
                        apellido: {
                            validators: {
                                notEmpty: {
                                    message: 'El apellido es un campo obligatorio'
                                    },
                                regexp: {
                                    regexp: /^[A-Za-z ñÑ]+$/,
                                    
                                     message: 'Solo letras o espacios'
                                }
                            }
                        },
                        
                        usuario: {
                            validators: {
                                notEmpty: {
                                    message: 'El usuario es un campo obligatorio'
                                    },
                                regexp: {
                                    regexp: /^[A-Za-z ñÑ 0-9]+$/,
                                    
                                     message: 'Solo letras, espacios o numeros, no caracteres'
                                }
                            }
                        },
                        
                        //en proceso
                               contraseña: {
                            validators: {
                                notEmpty: {
                                    message: 'La contraseña es un campo obligatorio'
                                    },
                                regexp: {
                                    regexp: /^[A-Za-z ñÑ 0-9]+$/,
                                    
                                     message: 'La contraseña debe tener como minimo 7 digitos'
                                }
                            }
                        },
                        
                        //en proceso
                             correo: {
                            validators: {
                                notEmpty: {
                                    message: 'El correo es un campo obligatorio'
                                    },
                                regexp: {
                                    regexp: /^[A-Za-z ñÑ 0-9 @ . ]+$/,
                                    
                                     message: 'El correo debe tener como minimo el simbolo @'
                                }
                            }
                        },
                        
                     
                             direccion: {
                            validators: {
                                notEmpty: {
                                    message: 'La direccion es un campo obligatorio'
                                    },
                                regexp: {
                                    regexp: /^[A-Za-z ñÑ 0-9 . ,]+$/,
                                    
                                     message: 'La direccion no debe tener caracteres'
                                }
                            }
                        },
                     
                     
                      numero: {
                            validators: {
                                notEmpty: {
                                    message: 'El numero es un campo obligatorio'
                                    },
                                regexp: {
                                    regexp: /^[+ 0-9]+$/,
                                    
                                     message: 'El numero no debe tener caracteres o letras'
                                }
                            }
                        },
                     
                       dni: {
                            validators: {
                                notEmpty: {
                                    message: 'El numero de DNI es un campo obligatorio'
                                    },
                                regexp: {
                                    regexp: /^[ 0-9]+$/,
                                    
                                     message: 'El DNI no debe tener letras o caracteres'
                                }
                            }
                        },
                     
                     
                    }
                });

                // Validate the form manually
                $('#validateBtn').click(function () {
                    $('#id_form').bootstrapValidator('validate');
                });
            });
        </script>
        <footer class="w3-center w3-black w3-padding-64">
        <a href="registroC.jsp" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
        <div class="w3-xlarge w3-section">
            <i class="fa fa-facebook-official w3-hover-opacity"></i>
            <i class="fa fa-instagram w3-hover-opacity"></i>
            <i class="fa fa-snapchat w3-hover-opacity"></i>
            <i class="fa fa-pinterest-p w3-hover-opacity"></i>
            <i class="fa fa-twitter w3-hover-opacity"></i>
            <i class="fa fa-linkedin w3-hover-opacity"></i>
        </div>
        <p>Powered by Grupo Web Integrado</p>
    </footer>  
    </body>
</html>
