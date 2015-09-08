$(document).ready(function () {
    // don't append apiKey as a query string param
    $('#input_apiKey').off();

    // inject apiKey into "tenantkey" header (EXAMPLE)    
    //$('#input_apiKey').on('change', function () {
        //var key = $('#input_apiKey').val();
        //if (key && key.trim() !== '') {
        //    swaggerUi.api.clientAuthorizations.add("key", new SwaggerClient.ApiKeyAuthorization("TenantKey", key, "header"));      
        //}
    //});

    // make the logo in the top left point to delegate.dk
    var logo = $('#logo');
    if (logo[0]) {
        logo[0].attr('href', "http://delegate.dk");
    }
});
