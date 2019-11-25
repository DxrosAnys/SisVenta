$(document).ready(function () {
//listado de categoria
    $("#cbopccat").click(function () {
        var catcod = $(this).val();
        console.log(catcod);
        $.ajax({
            url: "ConsultarSubCategoriaAjax?cod=" + catcod,
            type: "get",
            cache: false,
            async: true,
            success: function (data) {
                $("#cbopcsub").empty();
                $.each(data, function (indice, prod) {
                    $("#cbopcsub").append(" <option value='" + prod.sub_cod + "'>" + prod.sbdescripcion + "</option>");
                });
                //listado de marca 
                $('#cbopcsub').click(function () {
                    var sub_cod = $(this).val();
                    console.log(sub_cod);
                    $.ajax({
                        url: "ConsultarMarcaAjax?sub_cod=" + sub_cod,
                        type: "get",
                        cache: false,
                        async: true,
                        success: function (data) {
                            $("#cbopcmar").empty();
                            $.each(data, function (indice, subpro) {
                                console.log(subpro);
                                $("#cbopcmar").append(" <option value='" + subpro.mar_cod + "'>" + subpro.descripcion + "</option>");
                            });
                            //listado de producto 
                            $('#cbopcmar').click(function () {
                                var sub_cod = $("#cbopcsub").val();
                                var mar_cod = $("#cbopcmar").val();
                                console.log(sub_cod);
                                console.log(mar_cod);
                                $.ajax({
                                    url: "ConsultarModeloAjax?codmar=" + mar_cod + "&codsub=" + sub_cod,
                                    type: "get",
                                    cache: false,
                                    aysnc: true,
                                    success: function (data) {
                                        $("#muestraListado").empty();
                                        $.each(data, function (indice, mod) {
                                            $("#muestraListado").append("<tr width='208.86' height='366.46' class='cptr col-xs-6 col-sm-4 col-md-3 col-lg-3 odd '\n" +
                                                    "  role='row'> \n <td class='cptd sorting_1 w3-center' width='180' height='350'> \n" +
                                                    "<div class='cpcajaprod'> \n" +
                                                    "<img src='resources/img/modelo/" + mod.mod_cod + ".jpg' height='200' width='160' class='w3-hover-opacity'/> \n" +
                                                    "<div class='nom'>" +
                                                    "<div class='tit'>" + mod.descripcion + "</div> \n " +
                                                    "<div class='pre'>S/." + mod.precio + "</div>  \n" +
                                                    "<div class='sto'>Stock " + mod.stock + "</div> \n" +
                                                    "<div class='cod'>" + mod.mod_cod + "</div>" +
                                                    "</div> </div>  </td> \n" +
                                                    "<td style='display: none;' ></td> \n" +
                                                    "<td style='display: none;' ></td> \n" +
                                                    "<td style='display: none;' ></td> " +
                                                    "</tr>");
                                        });
                                    }
                                });
                            });
                        }
                    });
                });
            }
        });
    });
//    $("#mostrar").click(function () {
//        $.ajax({
//            url: "ConsultarModelo",
//            type: "get",
//            cache: false,
//            aysnc: true,
//            success: function (data) {
//                $("#muestraListado").empty();
//                $.each(data, function (indice, mod) {
//                    $("#muestraListado").append("<tr width='208.86' height='366.46' class='cptr col-xs-6 col-sm-4 col-md-3 col-lg-3 odd '\n" +
//                            "  role='row'> \n <td class='cptd sorting_1 w3-center' width='180' height='350'> \n" +
//                            "<div class='cpcajaprod'> \n" +
//                            "<img src='resources/img/modelo/" + mod.mod_cod + ".jpg' height='200' width='160' class='w3-hover-opacity'/> \n" +
//                            "<div class='nom'>" +
//                            "<div class='tit'>" + mod.descripcion + "</div> \n " +
//                            "<div class='pre'>S/." + mod.precio + "</div>  \n" +
//                            "<div class='sto'>Stock " + mod.stock + "</div> \n" +
//                            "<div class='cod'>" + mod.mod_cod + "</div>" +
//                            "</div> </div>  </td> \n" +
//                            "<td style='display: none;' ></td> \n" +
//                            "<td style='display: none;' ></td> \n" +
//                            "<td style='display: none;' ></td> " +
//                            "</tr>");
//                });
//            }
//        });
//    });
});

