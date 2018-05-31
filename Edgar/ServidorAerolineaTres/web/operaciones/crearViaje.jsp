<%-- 
    Document   : crearVuelo
    Created on : May 10, 2018, 11:35:25 PM
    Author     : e-emi
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
        <title>Insertar Viajes</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../ui/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../ui/css/smoothness/jquery-ui-1.10.4.custom.css" rel="stylesheet">
    </head>
    <body>
        

    <div class="container">
            <a href="/ServidorAerolineaTres">Página Principal</a>
      <form action="../servlets/insertViaje.jsp" method="post" class="form-signin">
        <h2 class="form-signin-heading" style="">Inserte un Viaje</h2>
        <input name="id_viaje" class="form-control" placeholder="Id Viaje" required="" autofocus="">
        <input name="origen_viaje" class="form-control" placeholder="Origen Viaje" required="">
        <input name="destino_viaje" class="form-control" placeholder="Destino Viaje" required="">       
        <button class="btn btn-lg btn-primary btn-block" type="submit">Crear Viaje</button>
      </form>
    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    <br><br>
            <h1>Tabla Agencias_Viajes</h1>
                            <div id="tabla-respuesta" class="table-responsive">
                                <table id="datatable" class="table table-striped table-bordered table-hover">

                                    <thead>
                                        <tr>
                                            <th style="text-align: center;"><b>Id_Agencia_Viaje</b></th>
                                            <th style="text-align: center;"><b>Nombre_Agencia</b></th>
                                            <th style="text-align: center;"><b>Email_Agencia</b></th>
                                        </tr>  
                                    </thead>


                                    <%
                                        Connection con = null;

                                        String url = "jdbc:oracle:thin:@localhost:1521:aerolineatr";
                                        String username = "Edgar";
                                        String password = "pass123";
                                        try {
                                            con = DriverManager.getConnection(url, username, password);
                                            ResultSet rs = con.createStatement().executeQuery("select * from agencias_viajes");
                                            while (rs.next()) {
                                    %>
                                    <tr>
                                        <td><%=rs.getString(1)%></td>
                                        <td><%=rs.getString(2)%></td>
                                        <td><%=rs.getString(3)%></td>
                                    </tr>
                                    <%
                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    %>
                                    

                                    <tbody>
                                </table>
                            </div>
                                    <h1>Tabla Viajes</h1>
                            <div id="tabla-respuesta" class="table-responsive">
                                <table id="datatable" class="table table-striped table-bordered table-hover">

                                    <thead>
                                        <tr>
                                            <th style="text-align: center;"><b>Id_Viaje</b></th>
                                            <th style="text-align: center;"><b>Agencia_Viaje</b></th>
                                            <th style="text-align: center;"><b>Origen_Viaje</b></th>
                                            <th style="text-align: center;"><b>Destino_Viaje</b></th>
                                            <th style="text-align: center;"><b>Precio_total</b></th>
                                        </tr>  
                                    </thead>


                                    <%
                                        try {
                                            con = DriverManager.getConnection(url, username, password);
                                            ResultSet rs = con.createStatement().executeQuery("select v.id_viaje, av.NOMBRE_AGENCIA, v.origen_viaje, v.DESTINO_VIAJE, v.precio_total from agencias_viajes av, viajes v where v.id_agencia_viaje = av.ID_AGENCIA_VIAJE");
                                            while (rs.next()) {
                                    %>
                                    <tr>
                                        <td><%=rs.getString(1)%></td>
                                        <td><%=rs.getString(2)%></td>
                                        <td><%=rs.getString(3)%></td>
                                        <td><%=rs.getString(4)%></td>
                                        <td><%=rs.getString(5)%></td>
                                        <td><%=rs.getString(6)%></td>
                                        <td><%=rs.getString(7)%></td>
                                        <td><%=rs.getString(8)%></td>
                                    </tr>
                                    <%
                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    %>


                                    <tbody>
                                </table>
                            </div>
</body>
</html>
