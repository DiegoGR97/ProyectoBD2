<%-- 
    Document   : crearVuelo
    Created on : May 10, 2018, 11:35:25 PM
    Author     : e-emi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">
        <title>Insertar Agencia de Viajes</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../ui/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../ui/css/smoothness/jquery-ui-1.10.4.custom.css" rel="stylesheet">
    </head>
    <body>
        

    <div class="container">

      <form action="../servlets/insertAgenciaViaje.jsp" method="post" class="form-signin">
        <h2 class="form-signin-heading" style="">Inserte una Agencia de Viajes</h2>
        <input name="nombre_agencia" class="form-control" placeholder="Nombre Agencia de Viajes" required="" autofocus="">
        <input name="email_agencia" class="form-control" placeholder="Email Agencia de Viajes" required="">      
        <button class="btn btn-lg btn-primary btn-block" type="submit">Crear Agencia de Viajes</button>
      </form>
    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    <br><br>
    <a href="/ServidorAerolineaUno">Página Principal</a>
</body>
</html>
