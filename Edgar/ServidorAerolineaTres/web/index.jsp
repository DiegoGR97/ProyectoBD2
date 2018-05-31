<%-- 
    Document   : index.jsp
    Created on : May 10, 2018, 6:11:26 PM
    Author     : e-emi
--%>
<%@page import="org.db.Conexion"%>
<%@ page language="java" import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">
        <title>Aerolinea</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootsrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="ui/css/smoothness/jquery-ui-1.10.4.custom.css" rel="stylesheet">
        <meta charset="utf-8">
        
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    </head>
    <body role="document">        
        
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">Chapín Airlines
                </div>

                <div>
                    <ul class="nav navbar-nav">
                        <!-- DropDown Menu -->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Nuevo<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="../ServidorAerolineaTres/operaciones/crearVuelo.jsp">Vuelo</a></li>
                                <li><a href="../ServidorAerolineaTres/operaciones/crearCliente.jsp">Cliente</a></li>
                                <li><a href="../ServidorAerolineaTres/operaciones/crearViaje.jsp">Viaje</a></li>
                                <li><a href="../ServidorAerolineaTres/operaciones/crearAgenciaViaje.jsp">Agencia de Viaje</a></li>
                            </ul>
                        </li>
                        <!-- DropDown Menu -->

                        <li><a  href="../ServidorAerolineaTres/operaciones/cancelarBoleto.jsp">Cancelar Boleto</a></li>

                    </ul>
                </div>

            </div>
        </nav>
        
        <div class="container" >
            <br><br><br><br>
            <div class="row">
                <div class="col-md-12">


                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Aerolinea </h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">

                                <div class="col-md-6">
                                    <div class="container">

                                        <form action="" method="post" class="form-signin">
                                            <h2 class="form-signin-heading" style="">Búsqueda de Vuelos</h2>
                                            <input name="origen" class="form-control" type="text" placeholder="Origen" required="" autofocus="">
                                            <input name="destino" class="form-control" type="text" placeholder="Destino" required="">    
                                            <!--
                                            <input name="fs" class="form-control" type="text" placeholder="Fecha Salida: dd-mm-yyyy" required="">  
                                            <input name="fr" class="form-control" type="text" placeholder="Fecha Retorno: dd-mm-yyyy" required="">  
                                            -->
                                            <button class="btn btn-lg btn-primary btn-block" type="submit">Buscar Vuelo</button>
                                        </form>
                                    </div> <!-- /container -->
                                </div>
                            </div> 
                            <%
                                String origen = "", destino = "", fs = "", fr = "";
                                if (request.getParameter("origen") != null){
                                    origen = request.getParameter("origen");
                                }
                                if (request.getParameter("destino") != null){
                                    destino = request.getParameter("destino");
                                }
                                if (request.getParameter("fs") != null){
                                    fs = request.getParameter("fs");
                                }
                                if (request.getParameter("fr") != null){
                                    fr = request.getParameter("fr");
                                }
                                Conexion conexion = new Conexion();
                                Connection connection = conexion.conectar();
                                ResultSet rs = null;
                                try {
                                    if(origen.equals("all") || destino.equals("all")){
                                        rs = connection.createStatement().executeQuery("SELECT * FROM vuelos");
                                    } else {
                                        rs = connection.createStatement().executeQuery("SELECT * FROM vuelos WHERE origen_vuelo='"+origen+"' OR destino_vuelo='"+destino+"'");
                                        //rs = connection.createStatement().executeQuery("SELECT * FROM vuelos WHERE origen_vuelo='"+origen+"' AND destino_vuelo='"+destino+"'"+"AND fecha_partida=");
                                    }
                            %>
                            <!--
                            <div class="row">
                                                    
                                    <div class="col-md-6">
                                            <label>Origen:</label>
                                            <input  id="Origen" name="Origen" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>
                                                            
                                    <div class="col-md-6">
                                            <label>Destino:</label>
                                            <input id="Destino" name="Destino" type="text" class="form-control"  onchange="cargarListado();" value= "" >
                                    
                                    </div>
                                                            
                            </div>
                            -->
                            <div class="row">

                                <div class="col-md-6">
                                    <div class="container">

                                        <form action="../ServidorAerolineaTres/servlets/insertBoleto.jsp" method="post" class="form-signin">
                                            <h2 class="form-signin-heading" style="">Comprar Boleto</h2>
                                            <input name="id_vuelo" class="form-control" placeholder="id del vuelo" required="" autofocus="">
                                            <input name="id_viaje" class="form-control" placeholder="id de viaje" required="">
                                            <input name="id_cliente" class="form-control" placeholder="id de cliente" required="">       
                                            <button class="btn btn-lg btn-primary btn-block" type="submit">Comprar Boleto</button>
                                        </form>
                                    </div> <!-- /container -->
                                </div>
                            </div> 
                            <br>
                            <h1>Tabla Vuelos</h1>
                            <div id="tabla-respuesta" class="table-responsive">
                                <table id="datatable" class="table table-striped table-bordered table-hover">

                                    <thead>
                                        <tr>
                                            <th style="text-align: center;"><b>Id_Vuelo</b></th>
                                            <th style="text-align: center;"><b>Origen_Vuelo</b></th>
                                            <th style="text-align: center;"><b>Destino_Vuelo</b></th>
                                            <th style="text-align: center;"><b>Capacidad_Vuelo</b></th>
                                            <th style="text-align: center;"><b>Boletos_Comprados</b></th>
                                            <th style="text-align: center;"><b>Fecha_Partida</b></th>
                                            <th style="text-align: center;"><b>Fecha_Llegada</b></th>
                                            <th style="text-align: center;"><b>Precio_Unitario</b></th>

                                        </tr>  
                                    </thead>


                                    <%
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
                                            rs.close();
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
                                            <th style="text-align: center;"><b>Origen_Viaje</b></th>
                                            <th style="text-align: center;"><b>Destino_Viaje</b></th>
                                            <th style="text-align: center;"><b>Precio_total</b></th>
                                        </tr>  
                                    </thead>
                                    <%
                                        try {
                                            rs = connection.createStatement().executeQuery("SELECT id_viaje, origen_viaje, destino_viaje, precio_total FROM viajes");
                                            while (rs.next()) {
                                    %>
                                    <tr>
                                        <td><%=rs.getString(1)%></td>
                                        <td><%=rs.getString(2)%></td>
                                        <td><%=rs.getString(3)%></td>
                                        <td><%=rs.getString(4)%></td>
                                    </tr>
                                    <%
                                            }
                                            ;
                                            rs.close();
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    %>


                                    <tbody>
                                </table>
                            </div>
                            <h1>Tabla Clientes</h1>
                            <div id="tabla-respuesta" class="table-responsive">
                                <table id="datatable" class="table table-striped table-bordered table-hover">

                                    <thead>
                                        <tr>
                                            <th style="text-align: center;"><b>Id_Cliente</b></th>
                                            <th style="text-align: center;"><b>Nombre_Cliente</b></th>
                                            <th style="text-align: center;"><b>Apellido_Cliente</b></th>
                                            <th style="text-align: center;"><b>Email_Cliente</b></th>
                                            <th style="text-align: center;"><b>Nacionalidad</b></th>
                                        </tr>  
                                    </thead>


                                    <%
                                        try {
                                            rs = connection.createStatement().executeQuery("SELECT * FROM clientes");
                                            while (rs.next()) {
                                    %>
                                    <tr>
                                        <td><%=rs.getString(1)%></td>
                                        <td><%=rs.getString(2)%></td>
                                        <td><%=rs.getString(3)%></td>
                                        <td><%=rs.getString(4)%></td>
                                        <td><%=rs.getString(5)%></td>
                                    </tr>
                                    <%
                                            }
                                            ;
                                            rs.close();
                                            connection.close();
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    %>


                                    <tbody>
                                </table>
                            </div>        
                        </div>


                    </div>  
                </div>  
            </div>  


    </body>                    
