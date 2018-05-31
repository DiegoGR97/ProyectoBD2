<%-- 
    Document   : RegistroBoletos
    Created on : May 29, 2018, 11:05:53 PM
    Author     : Diego
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="ProbarConexion.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.ws.Vuelos"%>
<%@page import="org.ws.Clientes"%>
<%@page import="java.util.Arrays"%>
<%@page import="AgenciaDeViajes.WebServicesAerolinea_Cliente"%>
<%@page import="AgenciaDeViajes.WebServicesAerolinea_Cliente2"%>

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
        <title>Agencia de Viajes</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="ui/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="ui/css/smoothness/jquery-ui-1.10.4.custom.css" rel="stylesheet">


    </head>

    <body role="document">

        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="Home.jsp"> 
                        Agencia de Viajes
                    </a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a  href="RegistrarUsuario.jsp">Registrar Usuario</a></li>
                        <li><a  href="VerYRegistrarClientes.jsp">Ver y Registrar Clientes</a></li>
                        <li><a  href="RegistroBoletos.jsp">Boletos Registrados</a></li>
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
                            <h3 class="panel-title">Registro de Boletos Adquiridos por Agencia de Viajes </h3>
                        </div>
                        <div class="panel-body">


                            <div class="row">

                               <div id="tabla-respuesta" class="table-responsive">
                                    <table id="datatable" class="table table-striped table-bordered table-hover">

                                        <thead>
                                            <tr>
                                                <th style="text-align: center;"><b>ID de Aerolinea</b></th>
                                                <th style="text-align: center;"><b>Número de Boleto</b></th>
                                                <th style="text-align: center;"><b>Cliente en esa Aerolínea</b></th>
                                                <th style="text-align: center;"><b>ID de Viaje de Agencia</b></th>
                                                <th style="text-align: center;"><b>Fecha de Compra</b></th>
                                                <th style="text-align: center;"><b>Usuario de Compra</b></th>
                                                <th style="text-align: center;"><b>Boleto Cancelado</b></th>
                                                <th style="text-align: center;"><b>Fecha de Cancelación</b></th>
                                                <th style="text-align: center;"><b>Usuario de Cancelación</b></th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <%
                                                Conexion con = new Conexion();
                                                Connection conn = con.conectar();
                                                ResultSet rsBoletos = null;
                                                int x = 0;
                                                try {
                                                    rsBoletos = conn.createStatement().executeQuery("SELECT ID_AEROLINEA, NO_BOLETO, ID_CLIENTE_AEROLINEA,"
                                                            + "ID_VIAJE_AGENCIA, FECHA_COMPRA_BOLETO, USUARIO_AGENCIA, BOLETO_CANCELADO, FECHA_BOLETO_CANCELADO_AGENCIA,"
                                                            + "USUARIO_CANCELACION FROM BOLETOS_COMPRADOS_AGENCIA ORDER BY FECHA_COMPRA_BOLETO DESC");

                                                    while (rsBoletos.next()) {
                                            %>
                                            <tr>
                                                <td><%=rsBoletos.getString(1)%></td>
                                                <td><%=rsBoletos.getString(2)%></td>
                                                <td><%=rsBoletos.getString(3)%></td>
                                                <td><%=rsBoletos.getString(4)%></td>
                                                <td><%=rsBoletos.getString(5)%></td>
                                                <td><%=rsBoletos.getString(6)%></td>
                                                <td><%=rsBoletos.getString(7)%></td>
                                                <td><%=rsBoletos.getString(8)%></td>
                                                <td><%=rsBoletos.getString(9)%></td>

                                            </tr>
                                            <%
                                                    }

                                                    rsBoletos.close();
                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                                out.println("No se pudo mandar a traer los registros.");
                                            
                                                }
                                            %>


                                        <tbody>


                                    </table>
                            </div>
                        </div>


                    </div>
                </div> 

            </div>  
        </div>  
    </body>                    