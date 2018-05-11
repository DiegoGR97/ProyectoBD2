<%-- 
    Document   : index
    Created on : May 11, 2018, 2:29:56 AM
    Author     : Diego
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.ws.Vuelos"%>
<%@page import="java.util.Arrays"%>
<%@page import="AgenciaDeViajes.Aerolinea_getVuelos_2"%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="AgenciaDeViajes.Aerolinea_getVuelos"%>
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

                    <a class="navbar-brand" href="#"> 
                        Agencia de Viajes
                    </a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">

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
                            <h3 class="panel-title">Agencia de Viajes </h3>
                        </div>
                        <div class="panel-body">


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

                        </div> 
                       <!-- <br> -->
                                <%
                                       List<Vuelos> VuelosTraidos = new ArrayList<Vuelos>();
                                       List<org.ws.Vuelos> NuevosVuelos = new ArrayList<Vuelos>();
                                       VuelosTraidos = Aerolinea_getVuelos_2.getVuelos();    %> 
                                       <!--
                                       <p> <% out.println("Objetos de los vuelos traidos: " + VuelosTraidos.toString()); %> </p>
                                       <p> <% out.println("Cantidad de vuelos encontrados: " + VuelosTraidos.size()); %> </p>
                                      <!-- <p> <% out.println(Arrays.toString(VuelosTraidos.toArray()));%> </p> 
                                           
                                      <%  for(int i=0;i<VuelosTraidos.size();i++){   %>
                                         <p> <% out.println(VuelosTraidos.get(i).getIdVuelo() + " " +  VuelosTraidos.get(i).getOrigenVuelo() + " " +  VuelosTraidos.get(i).getDestinoVuelo());  %> </p>
                                      <% } %>   -->
                                      
                                      <br>             
                                      
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
                                 <tbody>
                                        <%
                                         for (int i = 0; i < VuelosTraidos.size(); i++) {
                                    %>
                                     
                                    <tr>
                                        <td><%out.println(VuelosTraidos.get(i).getIdVuelo());%></td>
                                        <td><%out.println(VuelosTraidos.get(i).getOrigenVuelo());%></td>
                                        <td><%out.println(VuelosTraidos.get(i).getDestinoVuelo());%></td>
                                        <td><%out.println(VuelosTraidos.get(i).getCapacidadVuelo());%></td>
                                        <td><%out.println(VuelosTraidos.get(i).getBoletosComprados());%></td>
                                        <td><%out.println(VuelosTraidos.get(i).getFechaPartida());%></td>
                                        <td><%out.println(VuelosTraidos.get(i).getFechaLlegada());%></td>
                                        <td><%out.println(VuelosTraidos.get(i).getPrecioUnitario());%> </td> 
                                    </tr>  
                                        <%   
                                        }
                                        %>
                                        
                                 </tbody>

                               
                            </table>
                        </div>
                    </div>


                </div>  
            </div>  
        </div>   
    </body>                    