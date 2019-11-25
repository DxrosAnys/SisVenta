
$("#tableProd").ready(function(){
    alert ("aqui tambien");
        $.ajax({
            url: "ConsultarProducto",
            type: "get",
            cache: false,
            async: true,
            success: function (data) {
                
                $.each(data, function (indice, prod) {
                    $("#print").append(" <tr>" +
                            "<td>" + prod.mod_cod + "</td> " +
                            "<td>" + prod.descripcion + "</td> " +
                            "<td>" + prod.precio + "</td> " +
                            "<td>" + prod.stock + "</td> " +
                            "<td>" + prod.descuento + "</td> " +
                            "<td>" + prod.deadline + "</td> " +
                            "<td>" + prod.dateregister + "</td> " +
                            "</tr>");
                });
            },
            sendBefore: function(XMLHttpRequest, textStatus, errorThrown) { 
                    alert("Status: " + textStatus); alert("Error: " + errorThrown); 
                }  
        });
});

