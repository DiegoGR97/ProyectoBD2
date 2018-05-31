<%-- 
    Document   : index
    Created on : May 11, 2018, 2:29:56 AM
    Author     : Diego
--%>

<%@page import="AgenciaDeViajes.WebServicesAerolinea_Cliente2"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="ProbarConexion.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.ws.Vuelos"%>
<%@page import="org.ws.OrigenDestinoVuelos"%>
<%@page import="java.util.Arrays"%>
<%@page import="AgenciaDeViajes.WebServicesAerolinea_Cliente"%>

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
                        <h2 style="text-align: center; font-size: 2em" >SITIO DE COMPRA DE BOLETOS DE AGENCIA DE VIAJES </h2>


                        <div class="panel-heading">
                            <h3 class="panel-title">Catálogo de Orígenes y Destinos Posibles </h3>
                        </div>
                        <div class="panel-body">


                            <div class="row">



                                <%

                                    List<OrigenDestinoVuelos> CatalogoTraido = new ArrayList<OrigenDestinoVuelos>();
                                    List<org.ws.OrigenDestinoVuelos> NuevoOrigenDestinoVuelos = new ArrayList<OrigenDestinoVuelos>();
                                    CatalogoTraido = WebServicesAerolinea_Cliente.getOrigenDestino();

                                    List<OrigenDestinoVuelos> CatalogoTraido2 = new ArrayList<OrigenDestinoVuelos>();
                                    List<org.ws.OrigenDestinoVuelos> NuevoCatalogoTraido2 = new ArrayList<OrigenDestinoVuelos>();
                                    CatalogoTraido2 = WebServicesAerolinea_Cliente2.getOrigenDestino();

                                    /*Aquí ir poniendo las distintas llamadas a funciones de los distintos web services de 
                                        distintas aerolíneas para llamar a varias de ellas. */

                                %> 

                                <div id="tabla-respuesta" class="table-responsive">
                                    <table id="datatable" class="table table-striped table-bordered table-hover">

                                        <thead>
                                            <tr>

                                                <th style="text-align: center;"><b>Origen</b></th>
                                                <th style="text-align: center;"><b>Destino</b></th>

                                            </tr>
                                        </thead>
                                        <tbody>

                                            <!-- Poner un for de estos por cada una de las aerolíneas consultadas -->


                                            <%                                                for (int i = 0; i < CatalogoTraido.size(); i++) {
                                            %>

                                            <tr>

                                                <td><%out.println(CatalogoTraido.get(i).getOrigenVuelo());%></td>
                                                <td><%out.println(CatalogoTraido.get(i).getDestinoVuelo());%></td>

                                            </tr>  
                                            <%
                                                }
                                            %>


                                            <!-- Entre estos tags poner el UNO -->

                                            <%
                                                for (int i = 0; i < CatalogoTraido2.size(); i++) {
                                            %>

                                            <tr>

                                                <td><%out.println(CatalogoTraido2.get(i).getOrigenVuelo());%></td>
                                                <td><%out.println(CatalogoTraido2.get(i).getDestinoVuelo());%></td>
                                            </tr>  
                                            <%
                                                }
                                            %>

                                            <!-- Entre estos tags poner el UNO -->










                                        </tbody>


                                    </table>
                                </div>

                            </div>
                        </div>









                        <div class="panel-heading">
                            <h3 class="panel-title">Búsqueda de Vuelos </h3>
                        </div>
                        <div class="panel-body">


                            <div class="row">

                                <form action="" method="post" class="form-signin">

                                    <div class="col-md-6">
                                        <label>Origen:</label>
                                        <input  id="Origen" name="Origen" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>

                                    <div class="col-md-6">
                                        <label>Destino:</label>
                                        <input id="Destino" name="Destino" type="text" class="form-control"  onchange="cargarListado();" value= "" >

                                    </div>
                                    <!--
                                    <div class="col-md-6">
                                        <label>Asientos Disponibles:</label>
                                        <input id="AsientosDisponibles" name="AsientosDisponibles" type="text" class="form-control"  onchange="cargarListado();" value= "" >
                                    -->
                            </div>
                            <!--
                            <div class="col-md-6">
                                <label>Fecha de Partida:</label>
                                <input  id="FechaPartida" name="FechaPartida" type="text" placeholder="dd-mm-YYYY" class="form-control"  onchange="cargarListado();" value= "" > 
                            </div>

                            <div class="col-md-6">
                                <label>Fecha de Llegada:</label>
                                <input id="FechaLlegada" name="FechaLlegada" type="text"  placeholder="dd-mm-YYYY" class="form-control"  onchange="cargarListado();" value= "" >             
                            </div>
                            --> 
                            <div class="col-md-6">
                                <br> 
                                <button class="btn btn-lg btn-primary btn-block" type="submit">Buscar Vuelo</button>
                                <br>
                            </div>

                            </form>

                            <%
                                String Origen = "", Destino = "m";
                                if (request.getParameter("Origen") != null) {
                                    Origen = request.getParameter("Origen");
                                }
                                if (request.getParameter("Destino") != null) {
                                    Destino = request.getParameter("Destino");
                                }
                                ResultSet rs = null;

                                List<Vuelos> VuelosTraidosSeleccionados = new ArrayList<Vuelos>();
                                List<org.ws.Vuelos> NuevosVuelosSeleccionados = new ArrayList<Vuelos>();
                                VuelosTraidosSeleccionados = WebServicesAerolinea_Cliente.getCertainVuelos(Origen, Destino);

                                List<Vuelos> VuelosTraidosSeleccionados2 = new ArrayList<Vuelos>();
                                List<org.ws.Vuelos> NuevosVuelosSeleccionados2 = new ArrayList<Vuelos>();
                                VuelosTraidosSeleccionados2 = WebServicesAerolinea_Cliente2.getCertainVuelos(Origen, Destino);

                                /*Aquí ir poniendo las distintas llamadas a funciones de los distintos web services de 
                                    distintas aerolíneas para llamar a varias de ellas. */

                            %> 

                            <div id="tabla-respuesta" class="table-responsive">
                                <table id="datatable" class="table table-striped table-bordered table-hover">

                                    <thead>
                                        <tr>
                                            <th style="text-align: center;"><b>Id Aerolinea</b></th>
                                            <th style="text-align: center;"><b>Id Vuelo</b></th>
                                            <th style="text-align: center;"><b>Origen</b></th>
                                            <th style="text-align: center;"><b>Destino</b></th>
                                            <th style="text-align: center;"><b>Capacidad Vuelo</b></th>
                                            <th style="text-align: center;"><b>Boletos Comprados</b></th>
                                            <th style="text-align: center;"><b>Fecha Partida</b></th>
                                            <th style="text-align: center;"><b>Fecha Llegada</b></th>
                                            <th style="text-align: center;"><b>Precio Unitario</b></th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <!-- Poner un for de estos por cada una de las aerolíneas consultadas -->


                                        <%                                                for (int i = 0; i < VuelosTraidosSeleccionados.size(); i++) {
                                        %>

                                        <tr>
                                            <td>1</td>
                                            <td><%out.println(VuelosTraidosSeleccionados.get(i).getIdVuelo());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados.get(i).getOrigenVuelo());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados.get(i).getDestinoVuelo());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados.get(i).getCapacidadVuelo());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados.get(i).getBoletosComprados());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados.get(i).getFechaPartida());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados.get(i).getFechaLlegada());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados.get(i).getPrecioUnitario());%> </td> 
                                        </tr>  
                                        <%
                                            }
                                        %>


                                        <!-- Entre estos tags poner el UNO -->

                                        <%
                                            for (int i = 0; i < VuelosTraidosSeleccionados2.size(); i++) {
                                        %>

                                        <tr>
                                            <td>2</td>
                                            <td><%out.println(VuelosTraidosSeleccionados2.get(i).getIdVuelo());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados2.get(i).getOrigenVuelo());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados2.get(i).getDestinoVuelo());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados2.get(i).getCapacidadVuelo());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados2.get(i).getBoletosComprados());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados2.get(i).getFechaPartida());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados2.get(i).getFechaLlegada());%></td>
                                            <td><%out.println(VuelosTraidosSeleccionados2.get(i).getPrecioUnitario());%> </td> 
                                        </tr>  
                                        <%
                                            }
                                        %>

                                        <!-- Entre estos tags poner el UNO -->










                                    </tbody>


                                </table>
                            </div>

                        </div>

                        <div class="panel-heading">
                            <h3 class="panel-title">Listado de Viajes de esta Agencia:</h3>
                        </div>
                        <div class="panel-body">


                            <div class="row">



                                <div id="tabla-respuesta" class="table-responsive">
                                    <table id="datatable" class="table table-striped table-bordered table-hover">

                                        <thead>
                                            <tr>
                                                <th style="text-align: center;"><b>ID de Viaje</b></th>
                                                <th style="text-align: center;"><b>Origen del Viaje</b></th>
                                                <th style="text-align: center;"><b>Destino del Viaje</b></th>
                                                <!-- <th style="text-align: center;"><b>Precio Total de Boletos</b></th> -->
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <%
                                                Conexion con = new Conexion();
                                                Connection conn = con.conectar();
                                                ResultSet rsViajes = null;
                                                int x = 0;
                                                try {
                                                    rsViajes = conn.createStatement().executeQuery("SELECT id_viaje_agencia, origen_viaje, destino_viaje FROM viajes ORDER BY id_viaje_agencia DESC");

                                                    while (rsViajes.next()) {
                                            %>
                                            <tr>
                                                <td><%=rsViajes.getString(1)%></td>
                                                <td><%=rsViajes.getString(2)%></td>
                                                <td><%=rsViajes.getString(3)%></td>

                                            </tr>
                                            <%
                                                    }

                                                    rsViajes.close();
                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                                }
                                            %>


                                        <tbody>


                                    </table>
                                </div>

                            </div>
                        </div> 




                        <div class="panel-heading">
                            <h3 class="panel-title">Creación de un Viaje:</h3>
                        </div>
                        <div class="panel-body">

                            <div class="row">

                                <form action="" method="post" class="form-signin">

                                    <div class="col-md-6">
                                        <label>ID de Viaje:</label>
                                        <input  id="ID_Viaje" name="ID_Viaje" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>

                                    <div class="col-md-6">
                                        <label>Origen:</label>
                                        <input id="Origen_Viaje" name="Origen_Viaje" type="text" class="form-control"  onchange="cargarListado();" value= "" >

                                    </div>
                                    <div class="col-md-6">
                                        <label>Destino:</label>
                                        <input  id="Destino_Viaje" name="Destino_Viaje" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>

                                    <div class="col-md-6">
                                        <br>
                                        <button class="btn btn-lg btn-primary btn-block" type="submit">Crear Viaje</button>
                                    </div>
                                    <div class="col-md-6">


                                        <%
                                            String ID_Viaje = "", Origen_Viaje = "", Destino_Viaje = "";
                                            if (request.getParameter("ID_Viaje") != null || ID_Viaje != "") {
                                                ID_Viaje = request.getParameter("ID_Viaje");
                                            }
                                            if (request.getParameter("Origen_Viaje") != null || Origen_Viaje != "") {
                                                Origen_Viaje = request.getParameter("Origen_Viaje");
                                            }
                                            if (request.getParameter("Destino_Viaje") != null || Destino_Viaje != "") {
                                                Destino_Viaje = request.getParameter("Destino_Viaje");
                                            }
                                            Conexion conexion = new Conexion();
                                            Connection connection = conexion.conectar();
                                            PreparedStatement ps = null;

                                            if (ID_Viaje != null && Origen_Viaje != null && Destino_Viaje != null && ID_Viaje != "" && Origen_Viaje != "" && Destino_Viaje != "") {
                                                try {
                                                    ps = connection.prepareStatement("INSERT INTO viajes (id_viaje_agencia, origen_viaje, destino_viaje) values (?,?,?)");
                                                    ps.setInt(1, Integer.parseInt(ID_Viaje));
                                                    ps.setString(2, Origen_Viaje);
                                                    ps.setString(3, Destino_Viaje);
                                                    ps.executeUpdate();
                                                    ps.close();
                                                    connection.close();

                                        %>
                                        <br>
                                        <div class="alert alert-success" role="alert">
                                            <% out.println("Registro exitoso del viaje " + ID_Viaje + ".");
                                            %>
                                        </div>
                                        <%
                                        } catch (Exception e) {
                                            e.printStackTrace();

                                        %>
                                        <br>
                                        <div class="alert alert-danger" role="alert">
                                            <% out.println("Error en el registro del viaje " + ID_Viaje + ".");
                                            %>
                                        </div>
                                        <%
                                                }
                                            }
                                        %>
                                    </div>

                                </form>
                            </div>
                        </div>






                        <div class="panel-heading">
                            <h3 class="panel-title">Compra de Boletos:</h3>
                        </div>
                        <div class="panel-body">

                            <div class="row">

                                <form action="" method="post" class="form-signin">

                                    <div class="col-md-6">
                                        <label>ID de Aerolínea:</label>
                                        <input  id="ID_AerolineaComprar" name="ID_AerolineaComprar" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>
                                    <div class="col-md-6">
                                        <label>ID de Vuelo:</label>
                                        <input  id="ID_Vuelo" name="ID_Vuelo" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>

                                    <div class="col-md-6">
                                        <label>ID de Viaje de Agencia:</label>
                                        <input id="ID_Viaje" name="ID_Viaje_Compra" type="text" class="form-control"  onchange="cargarListado();" value= "" >

                                    </div>
                                    <div class="col-md-6">
                                        <label>ID de Cliente de Aerolínea:</label>
                                        <input  id="ID_Cliente" name="ID_Cliente_Aero" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>
                                    <div class="col-md-6">
                                        <label>Usuario de Agencia que Compra:</label>
                                        <input  id="Usuario_Agencia" name="Usuario_Agencia" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>

                                    <div class="col-md-6">
                                        <br>
                                        <button class="btn btn-lg btn-primary btn-block" type="submit">Comprar Boleto</button>
                                    </div>

                                    <div class="col-md-6">
                                        <br>

                                        <%
                                            String ID_AerolineaComprar = "", ID_Vuelo = "", ID_Viaje_Compra = "", ID_Cliente_Aero = "", boletoIngresado = "", Usuario_Agencia = "";
                                            if (request.getParameter("ID_AerolineaComprar") != null || ID_AerolineaComprar != "") {
                                                ID_AerolineaComprar = request.getParameter("ID_AerolineaComprar");
                                            }
                                            if (request.getParameter("ID_Vuelo") != null || ID_Vuelo != "") {
                                                ID_Vuelo = request.getParameter("ID_Vuelo");
                                            }
                                            if (request.getParameter("ID_Viaje_Compra") != null || ID_Viaje_Compra != "") {
                                                ID_Viaje_Compra = request.getParameter("ID_Viaje_Compra");
                                            }
                                            if (request.getParameter("ID_Cliente_Aero") != null || ID_Cliente_Aero != "") {
                                                ID_Cliente_Aero = request.getParameter("ID_Cliente_Aero");
                                            }
                                            if (request.getParameter("Usuario_Agencia") != null || Usuario_Agencia != "") {
                                                Usuario_Agencia = request.getParameter("Usuario_Agencia");
                                            }
                                        %>

                                        <%
                                            if (ID_AerolineaComprar != null && ID_Vuelo != null && ID_Viaje_Compra != null && ID_Cliente_Aero != null && Usuario_Agencia != null
                                                    && ID_AerolineaComprar != "" && ID_Vuelo != "" && ID_Viaje_Compra != "" && ID_Cliente_Aero != "" && Usuario_Agencia != "") {
                                                try {
                                                    if (ID_AerolineaComprar.equals("1")) { //Si no funciona, probar con idaerolinea.equals("1")
                                                        boletoIngresado = WebServicesAerolinea_Cliente.comprarBoletoAgenciaUno(ID_Vuelo, ID_Cliente_Aero);

                                                    }
                                                    if (ID_AerolineaComprar.equals("2")) {
                                                        boletoIngresado = WebServicesAerolinea_Cliente2.comprarBoletoAgenciaUno(ID_Vuelo, ID_Cliente_Aero);
                                                    }
                                                    Conexion conexion2 = new Conexion();
                                                    Connection connection2 = conexion2.conectar();
                                                    PreparedStatement ps2 = null;
                                                    if (boletoIngresado != null && boletoIngresado != "") {
                                                        try {
                                                            ps2 = connection2.prepareStatement("INSERT INTO boletos_comprados_agencia "
                                                                    + "(id_cliente_aerolinea, id_aerolinea, no_boleto, id_viaje_agencia, usuario_agencia, fecha_compra_boleto) values (?,?,?,?,?, sysdate)");
                                                            ps2.setInt(1, Integer.parseInt(ID_Cliente_Aero));
                                                            ps2.setInt(2, Integer.parseInt(ID_AerolineaComprar));
                                                            ps2.setString(3, boletoIngresado);
                                                            ps2.setInt(4, Integer.parseInt(ID_Viaje_Compra));
                                                            ps2.setString(5, Usuario_Agencia);
                                                        ps2.executeUpdate();
                                                        ps2.close();
                                                        connection2.close(); %>

                                        <div class="alert alert-success" role="alert">
                                            <% out.println("Inserción exitosa del registro en la base de datos interna de la agencia del boleto " + boletoIngresado + ".");
                                            %>
                                        </div>
                                        <%
                                        } catch (Exception e) {
                                            e.printStackTrace();

                                        %>
                                        <br>
                                        <div class="alert alert-danger" role="alert">
                                            <% out.println("Inserción NO exitosa del registro en la base de datos interna de la agencia del boleto " + boletoIngresado + ".");
                                            %>
                                        </div>
                                        <%
                                                }
                                            }

                                        %>

                                        <div class="alert alert-success" role="alert">
                                            <% out.println("Compra exitosa del boleto " + boletoIngresado + " en la aerolínea " + ID_AerolineaComprar + ".");
                                            %>
                                        </div>
                                        <%
                                        } catch (Exception e) {
                                            e.printStackTrace();

                                        %>
                                        <br>
                                        <div class="alert alert-danger" role="alert">
                                            <% out.println("Error en el registro del boleto " + boletoIngresado + " en la aerolínea " + ID_AerolineaComprar + ".");
                                            %>
                                        </div>
                                        <%
                                                }
                                            }
                                        %>
                                    </div>


                                </form>
                            </div>
                        </div>




                        <div class="panel-heading">
                            <h3 class="panel-title">Cancelación de Boletos:</h3>
                        </div>
                        <div class="panel-body">

                            <div class="row">

                                <form action="" method="post" class="form-signin">

                                    <div class="col-md-6">
                                        <label>ID de Boleto a Cancelar:</label>
                                        <input  id="ID_Boleto_A_Cancelar" name="ID_Boleto_A_Cancelar" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>
                                    <div class="col-md-6">
                                        <label>ID de Aerolinea de ese Boleto:</label>
                                        <input  id="ID_Aerolinea_Boleto_Cancelar" name="ID_Aerolinea_Boleto_Cancelar" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>
                                    <div class="col-md-6">
                                        <label>Usuario de Agencia que Cancela:</label>
                                        <input  id="ID_Usuario_Cancela" name="ID_Usuario_Cancela" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>

                                    <div class="col-md-6">
                                        <br>
                                        <button class="btn btn-lg btn-primary btn-block" type="submit">Cancelar Boleto</button>
                                    </div>
                                    <div class="col-md-6">
                                        <br>

                                        <%
                                            String ID_Boleto_A_Cancelar = "", ID_Aerolinea_Boleto_Cancelar = "", ID_Usuario_Cancela = "";
                                            Boolean boletoCancelado = false;
                                            if (request.getParameter("ID_Boleto_A_Cancelar") != null || ID_Boleto_A_Cancelar != "") {
                                                ID_Boleto_A_Cancelar = request.getParameter("ID_Boleto_A_Cancelar");
                                            }
                                            if (request.getParameter("ID_Aerolinea_Boleto_Cancelar") != null || ID_Aerolinea_Boleto_Cancelar != "") {
                                                ID_Aerolinea_Boleto_Cancelar = request.getParameter("ID_Aerolinea_Boleto_Cancelar");
                                            }
                                            if (request.getParameter("ID_Usuario_Cancela") != null || ID_Usuario_Cancela != "") {
                                                ID_Usuario_Cancela = request.getParameter("ID_Usuario_Cancela");
                                            }
                                        %>

                                        <%
                                            if (ID_Boleto_A_Cancelar != null && ID_Aerolinea_Boleto_Cancelar != null && ID_Usuario_Cancela != null
                                                    && ID_Boleto_A_Cancelar != "" && ID_Aerolinea_Boleto_Cancelar != "" && ID_Usuario_Cancela != "") {
                                                try {
                                                    if (ID_Aerolinea_Boleto_Cancelar.equals("1")) { //Si no funciona, probar con idaerolinea.equals("1")
                                                        boletoCancelado = WebServicesAerolinea_Cliente.cancelarBoleto(Integer.parseInt(ID_Boleto_A_Cancelar));

                                                    }
                                                    if (ID_Aerolinea_Boleto_Cancelar == "2") {
                                                        boletoCancelado = WebServicesAerolinea_Cliente2.cancelarBoleto(Integer.parseInt(ID_Boleto_A_Cancelar));
                                                    }
                                                    Conexion conexion3 = new Conexion();
                                                    Connection connection3 = conexion3.conectar();
                                                    PreparedStatement ps3 = null;
                                                    if (boletoCancelado) {
                                                        try {
                                                            ps3 = connection3.prepareStatement("UPDATE BOLETOS_COMPRADOS_AGENCIA SET BOLETO_CANCELADO = 1, FECHA_BOLETO_CANCELADO_AGENCIA = sysdate, "
                                                                    + "USUARIO_CANCELACION = ? where NO_BOLETO = ?");
                                                            ps3.setString(1, ID_Usuario_Cancela);
                                                            ps3.setInt(2, Integer.parseInt(ID_Boleto_A_Cancelar));
                                                        ps3.executeUpdate();
                                                        ps3.close();
                                                        connection3.close(); %>

                                        <div class="alert alert-success" role="alert">
                                            <% out.println("Registro exitoso de la cancelación del boleto " + ID_Boleto_A_Cancelar + " en la base de datos interna de la agencia.");
                                            %>
                                        </div>
                                        <%
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        %>
                                        <br>
                                        <div class="alert alert-danger" role="alert">
                                            <% out.println("Registro NO exitoso de la cancelación del boleto " + ID_Boleto_A_Cancelar + " en la base de datos interna de la agencia.");
                                            %>
                                        </div>
                                        <%
                                                }
                                            }

                                        %>

                                        <div class="alert alert-success" role="alert">
                                            <% out.println("Cancelación exitosa del boleto " + ID_Boleto_A_Cancelar + "  en la aerolínea " + ID_Aerolinea_Boleto_Cancelar + ".");
                                            %>
                                        </div>
                                        <%
                                        } catch (Exception e) {
                                            e.printStackTrace();

                                        %>
                                        <br>
                                        <div class="alert alert-danger" role="alert">
                                            <% out.println("Error en la cancelación exitosa del boleto " + ID_Boleto_A_Cancelar + "  en la aerolínea " + ID_Aerolinea_Boleto_Cancelar + ".");
                                            %>
                                        </div>
                                        <%
                                                }
                                            }
                                        %>
                                    </div>

                                </form>
                            </div>
                        </div>


                        <%
                            List<Vuelos> VuelosTraidos = new ArrayList<Vuelos>();
                            List<org.ws.Vuelos> VuelosTraidosNuevos = new ArrayList<Vuelos>();
                            VuelosTraidos = WebServicesAerolinea_Cliente.getVuelos();

                            List<Vuelos> VuelosTraidos2 = new ArrayList<Vuelos>();
                            List<org.ws.Vuelos> VuelosTraidosNuevos2 = new ArrayList<Vuelos>();
                            VuelosTraidos2 = WebServicesAerolinea_Cliente2.getVuelos();


                        %>

                        <br>             

                        <div id="tabla-respuesta" class="table-responsive">
                            <table id="datatable" class="table table-striped table-bordered table-hover">

                                <thead>
                                    <tr>
                                        <th style="text-align: center;"><b>Id Aerolinea</b></th>
                                        <th style="text-align: center;"><b>Id Vuelo</b></th>
                                        <th style="text-align: center;"><b>Origen</b></th>
                                        <th style="text-align: center;"><b>Destino</b></th>
                                        <th style="text-align: center;"><b>Capacidad Vuelo</b></th>
                                        <th style="text-align: center;"><b>Boletos Comprados</b></th>
                                        <th style="text-align: center;"><b>Fecha Partida</b></th>
                                        <th style="text-align: center;"><b>Fecha Llegada</b></th>
                                        <th style="text-align: center;"><b>Precio Unitario</b></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%                                        for (int i = 0; i < VuelosTraidos.size(); i++) {
                                    %>

                                    <tr>
                                        <td>1</td>
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

                                    <!-- Entre estos tags poner el DOS -->


                                    <%
                                        for (int i = 0; i < VuelosTraidos2.size(); i++) {
                                    %>

                                    <tr>
                                        <td>2</td>
                                        <td><%out.println(VuelosTraidos2.get(i).getIdVuelo());%></td>
                                        <td><%out.println(VuelosTraidos2.get(i).getOrigenVuelo());%></td>
                                        <td><%out.println(VuelosTraidos2.get(i).getDestinoVuelo());%></td>
                                        <td><%out.println(VuelosTraidos2.get(i).getCapacidadVuelo());%></td>
                                        <td><%out.println(VuelosTraidos2.get(i).getBoletosComprados());%></td>
                                        <td><%out.println(VuelosTraidos2.get(i).getFechaPartida());%></td>
                                        <td><%out.println(VuelosTraidos2.get(i).getFechaLlegada());%></td>
                                        <td><%out.println(VuelosTraidos2.get(i).getPrecioUnitario());%> </td> 
                                    </tr>  
                                    <%
                                        }
                                    %>



                                    <!-- Entre estos tags poner el DOS -->


                                </tbody>


                            </table>
                        </div>
                    </div>
                </div> 

            </div>  
        </div>  
    </div>   

</body>                    