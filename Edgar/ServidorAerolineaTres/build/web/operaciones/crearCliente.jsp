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
        <title>Insertar Vuelos</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../ui/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../ui/css/smoothness/jquery-ui-1.10.4.custom.css" rel="stylesheet">
    </head>
    <body>
        

    <div class="container">

      <form action="../servlets/insertCliente.jsp" method="post" class="form-signin">
        <h2 class="form-signin-heading" style="">Inserte un Cliente</h2>
        <input name="nombre_cliente" class="form-control" placeholder="Nombre" required="" autofocus="">
        <input name="apellido_cliente" class="form-control" placeholder="Apellido" required="">
        <input name="email_cliente" class="form-control" placeholder="Email" required="">
        <input name="nacionalidad" class="form-control" placeholder="Nacionalidad" required="">       
        <button class="btn btn-lg btn-primary btn-block" type="submit">Crear Cliente</button>
      </form>
    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    <br><br>
    <a href="/ServidorAerolineaTres">Página Principal</a>
</body>
</html>
