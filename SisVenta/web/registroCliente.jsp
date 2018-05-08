<%-- 
    Document   : registroU
    Created on : 19-abr-2018, 18:23:50
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<<<<<< HEAD

<html>   

     <%@include file="header.jsp" %> 
    <title>Registro</title>
    <body background="resources/img/general/bg-powerful.jpg">                
        <script src="resources/js/bootstrapValidator.js" type="text/javascript"></script>
        <script src="resources/js/jquery-1.10.2.min.js" type="text/javascript"></script>
        <br>
        <br>
        <div class="container">                                  
            <h2 class="w3-text-white w3-center"><strong>REGISTRO DE CLIENTE</strong></h2>             
            <link rel="stylesheet" href="resources/css/bootstrapValidator.css">
            <script src="resources/js/bootstrapValidator.js" type="text/javascript"></script>
            <title>Registro</title>
            <br>
            <br>
            <div class="container">                                  
                <div class="w3-row" style="width: 98%;">      
                    <ol class="migmov breadcrumb col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <li><a href="index.jsp">Inicio</a></li>
                        <li class="active">Registro de Cliente</li>
                    </ol>     
=======

    <%@include file="includes/header.jsp" %> 

    <link rel="stylesheet" href="resources/css/bootstrapValidator.css">
    <script src="resources/js/bootstrapValidator.js" type="text/javascript"></script>
    <title>Registro</title>
    <br>
    <br>
    <div class="container">                                  
        <div class="w3-row" style="width: 98%;">      
            <ol class="migmov breadcrumb col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <li><a href="index.jsp">Inicio</a></li>
                <li class="active">Registro de Cliente</li>
            </ol>     
        </div>
        <div class="w3-row">
            <form action="RegistrarUsuario" METHOD="POST" id="id_form">
                <div class="col-xs-12 col-md-6">
                    <div class="form-group">
                        <label class="control-label w3-text-white" for="id_nombre">Nombres</label>
                        <input class="form-control " type="text" id="id_nombre" name="txtnom" placeholder="Ingrese el nombre">
                    </div>
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="form-group">
                        <label class="control-label w3-text-white" for="id_apellido">Apellidos</label>
                        <input class="form-control " type="text" id="id_apellido" name="txtape" placeholder="Ingrese el apellido">
                    </div>
                </div>         
                <div class="col-xs-12 col-md-6">
                    <div class="form-group" >
                        <label class="control-label w3-text-white" for="id_nombre">Usuario</label>
                        <input class="form-control " type="text" id="id_nombre" name="txtusu" placeholder="Ingrese su usario">
                    </div>
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="form-group" >
                        <label class="control-label w3-text-white" for="id_nombre">Contraseña</label>
                        <input class="form-control " type="password" id="id_nombre" name="txtcon" placeholder="Ingrese contraseña">
                    </div>
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="form-group">
                        <label class="control-label w3-text-white" for="id_correo">Correo electronico</label>
                        <input class="form-control " type="text" id="id_correo" name="txtcor" placeholder="Ingrese correo">
                    </div>
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="form-group">
                        <label class="control-label w3-text-white" for="id_direccion">Direccion</label>
                        <input class="form-control " type="text" id="id_direccion" name="txtdir" placeholder="Ingrese su direccion">
                    </div>
>>>>>>> bbec25a5f2b354ea5180dbfc0e17b6b236943aec
                </div>
                <div class="w3-row">
                    <form action="RegistrarUsuario" METHOD="POST" id="id_form">
                        <div class="col-xs-12 col-md-6">
                            <div class="form-group">
                                <label class="control-label w3-text-white" for="id_nombre">Nombres</label>
                                <input class="form-control  " type="text" id="id_nombre" name="txtnom" placeholder="Ingrese el nombre">
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <div class="form-group">
                                <label class="control-label w3-text-white" for="id_apellido">Apellidos</label>
                                <input class="form-control " type="text" id="id_apellido" name="txtape" placeholder="Ingrese el apellido">
                            </div>
                        </div>         
                        <div class="col-xs-12 col-md-6">
                            <div class="form-group" >
                                <label class="control-label w3-text-white" for="id_nombre">Usuario</label>
                                <input class="form-control " type="text" id="id_nombre" name="txtusu" placeholder="Ingrese su usario">
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <div class="form-group" >
                                <label class="control-label w3-text-white" for="id_nombre">Contraseña</label>
                                <input class="form-control " type="password" id="id_nombre" name="txtcon" placeholder="Ingrese contraseña">
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <div class="form-group">
                                <label class="control-label w3-text-white" for="id_correo">Correo electronico</label>
                                <input class="form-control " type="text" id="id_correo" name="txtcor" placeholder="Ingrese correo">
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <div class="form-group">
                                <label class="control-label w3-text-white" for="id_direccion">Direccion</label>
                                <input class="form-control " type="text" id="id_direccion" name="txtdir" placeholder="Ingrese su direccion">
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <div class="form-group">
                                <label class="control-label w3-text-white" for="id_dni">Celular:</label>
                                <input class="form-control " type="text" id="id_numero" name="txtcel" placeholder="Ingrese su Numero">
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <div class="form-group">
                                <label class="control-label w3-text-white" for="id_dni">DNI</label>
                                <input class="form-control " type="text" id="id_dni" name="txtdni" placeholder="Ingrese su DNI">
                            </div>
                        </div>
                        <div class="form-group col-xs-12 col-md-12">
                            <div class="form-group">
                                <button type="submit" class="btn btn-warning center-block" >Crear Usuario</button>
                            </div>
                        </div>
                        <div class="form-group col-xs-12 col-md-12">
                            <label class="w3-text-white">${requestScope.mensaje}</label>
                        </div>       
                    </form>  
                </div>
<<<<<<< HEAD

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
                                txtdni: {
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
=======
                <div class="form-group col-xs-12 col-md-12">
                    <label class="w3-text-white">${requestScope.mensaje}</label>
                </div>       
            </form>  
        </div>
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
>>>>>>> bbec25a5f2b354ea5180dbfc0e17b6b236943aec
                            }
                        });
                        // Validate the form manually
                        $('#validateBtn').click(function () {
                            $('#id_form').bootstrapValidator('validate');
                        });
                    });
                </script>
                <footer class="w3-center w3-black w3-padding-64">
                    <a href="registroCliente.jsp" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
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

            </div>

<<<<<<< HEAD
        </div>
    </body>
=======
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
    <jsp:include page="includes/footer.jsp"></jsp:include>
</body>
>>>>>>> bbec25a5f2b354ea5180dbfc0e17b6b236943aec
</html>
