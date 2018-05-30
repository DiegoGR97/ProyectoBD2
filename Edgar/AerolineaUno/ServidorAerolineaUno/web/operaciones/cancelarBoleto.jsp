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
        <title>Insertar Vuelos</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../ui/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../ui/css/smoothness/jquery-ui-1.10.4.custom.css" rel="stylesheet">
    </head>
    <body>
        

    <div class="container">

      <form action="../servlets/cancelarBoleto.jsp" method="post" class="form-signin">
        <h2 class="form-signin-heading" style="">Ingrese un boleto</h2>
        <input name="id_boleto_comprado" class="form-control" placeholder="Boleto Comprado" required="" autofocus="">      
        <button class="btn btn-lg btn-primary btn-block" type="submit">Cancelar Boleto</button>
      </form>
    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    <br><br>
    <a href="/ServidorAerolineaUno">Página Principal</a>
    <h1>Tabla Boletos_Comprados</h1>
                            <div id="tabla-respuesta" class="table-responsive">
                                <table id="datatable" class="table table-striped table-bordered table-hover">

                                    <thead>
                                        <tr>
                                            <th style="text-align: center;"><b>Id_Boleto_Comprado</b></th>
                                            <th style="text-align: center;"><b>Nombre_Agencia_Viaje</b></th>
                                            <th style="text-align: center;"><b>Email_Agencia</b></th>
                                            <th style="text-align: center;"><b>Origen_Viaje</b></th>
                                            <th style="text-align: center;"><b>Destino_Viaje</b></th>
                                            <th style="text-align: center;"><b>Precio_Total_Viaje</b></th>
                                            <th style="text-align: center;"><b>Origen_Vuelo</b></th>
                                            <th style="text-align: center;"><b>Destino_Vuelo</b></th>
                                            <th style="text-align: center;"><b>Capacidad_Vuelo</b></th>
                                            <th style="text-align: center;"><b>Boletos_Comprados</b></th>
                                            <th style="text-align: center;"><b>Fecha_Partida_Vuelo</b></th>
                                            <th style="text-align: center;"><b>Fecha_Llegada_Vuelo</b></th>
                                            <th style="text-align: center;"><b>Precio_Unitario_Vuelo</b></th>
                                            <th style="text-align: center;"><b>Nombre_Cliente</b></th>
                                            <th style="text-align: center;"><b>Apellido_Cliente</b></th>
                                            <th style="text-align: center;"><b>Email_Cliente</b></th>
                                            <th style="text-align: center;"><b>Nacionalidad</b></th>
                                            <th style="text-align: center;"><b>Fecha_Compra_Boleto</b></th>
                                            <th style="text-align: center;"><b>Boleto_Cancelado</b></th>
                                            <th style="text-align: center;"><b>Fecha_Boleto_Cancelado</b></th>
                                        </tr>  
                                    </thead>


                                    <%
                                        Connection con = null;

                                        String url = "jdbc:oracle:thin:@localhost:1521:aerolineaun";
                                        String username = "Edgar";
                                        String password = "pass123";
                                        try {
                                            con = DriverManager.getConnection(url, username, password);
                                            ResultSet rs = con.createStatement().executeQuery("select bc.ID_BOLETO_COMPRADO, av.nombre_agencia, av.email_agencia, via.ORIGEN_VIAJE, via.DESTINO_VIAJE, via.precio_total, vue.origen_vuelo, vue.destino_vuelo, vue.capacidad_vuelo, vue.boletos_comprados, vue.fecha_partida, vue.fecha_llegada, vue.PRECIO_UNITARIO, c.NOMBRE_CLIENTE, c.APELLIDO_CLIENTE, c.EMAIL_CLIENTE, c.NACIONALIDAD, bc.FECHA_COMPRA_BOLETO, bc.BOLETO_CANCELADO, bc.FECHA_BOLETO_CANCELADO from boletos_comprados bc, viajes via, vuelos vue, clientes c, agencias_viajes av where bc.ID_VIAJE=via.ID_VIAJE and bc.ID_VUELO=vue.ID_VUELO and bc.ID_CLIENTE=c.ID_CLIENTE and bc.id_agencia_viaje=av.ID_AGENCIA_VIAJE");
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
                                        <td><%=rs.getString(9)%></td>
                                        <td><%=rs.getString(10)%></td>
                                        <td><%=rs.getString(11)%></td>
                                        <td><%=rs.getString(12)%></td>
                                        <td><%=rs.getString(13)%></td>
                                        <td><%=rs.getString(14)%></td>
                                        <td><%=rs.getString(15)%></td>
                                        <td><%=rs.getString(16)%></td>
                                        <td><%=rs.getString(17)%></td>
                                        <td><%=rs.getString(18)%></td>
                                        <td><%=rs.getString(19)%></td>
                                        <td><%=rs.getString(20)%></td>
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
