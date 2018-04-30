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
       <%@include file="header.jsp" %> 
        <p>--------------------------------------------------------------------------------</p>  
        <div class="container">                                  
            <h3 class="w3-text-white w3-center">REGISTRO DE CLIENTE</h3>
            <form action="RegistrarUsuario" METHOD="POST" id="id_form">
               
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_nombre">Nombres</label>
                    <input class="form-control " type="text" id="id_nombre" name="txtnom" placeholder="Ingrese el nombre">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_apellido">Apellidos</label>
                    <input class="form-control " type="text" id="id_apellido" name="txtape" placeholder="Ingrese el apellido">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_nombre">Usuario</label>
                    <input class="form-control " type="text" id="id_nombre" name="txtusu" placeholder="Ingrese su usario">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_nombre">Contraseña</label>
                    <input class="form-control " type="password" id="id_nombre" name="txtcon" placeholder="Ingrese contraseña">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_correo">Correo electronico</label>
                    <input class="form-control " type="text" id="id_correo" name="txtcor" placeholder="Ingrese correo">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_direccion">Direccion</label>
                    <input class="form-control " type="text" id="id_direccion" name="txtdir" placeholder="Ingrese su direccion">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_dni">Celular:</label>
                    <input class="form-control " type="text" id="id_numero" name="txtcel" placeholder="Ingrese su Numero">
                </div>
                <div class="form-group">
                    <label class="control-label w3-text-white" for="id_dni">DNI</label>
                    <input class="form-control " type="text" id="id_dni" name="txtdni" placeholder="Ingrese su DNI">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-warning center-block" >Crear Usuario</button>
                </div>
                <div>
                    <label class="w3-text-white">${requestScope.mensaje}</label>
                </div>           
            </form>     
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
                        txtnom: {
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
                        txtape: {
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
                        
                        txtusu: {
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
                               txtcon: {
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
                             txtcor: {
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
                        
                     
                             txtdir: {
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
                     
                     
                      txtcel: {
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
        <p>Powered by Ypower</p>
    </footer>  
    </body>
</html>
