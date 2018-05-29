<%-- 
    Document   : VerYRegistrarClientes
    Created on : May 22, 2018, 10:22:14 AM
    Author     : Diego
--%>

<%-- 
    Document   : RegistrarUsuario
    Created on : May 21, 2018, 11:11:43 PM
    Author     : Diego
--%>


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
                            <h3 class="panel-title">Lista de Clientes Registrados en Aerolínea </h3>
                        </div>
                        <div class="panel-body">


                            <div class="row">

                                <%

                                    List<Clientes> ClientesTraidos = new ArrayList<Clientes>();
                                    List<org.ws.Clientes> NuevosClientesTraidos = new ArrayList<Clientes>();
                                    ClientesTraidos = WebServicesAerolinea_Cliente.getClientes();
                                    
                                    List<Clientes> ClientesTraidos2 = new ArrayList<Clientes>();
                                    List<org.ws.Clientes> NuevosClientesTraidos2 = new ArrayList<Clientes>();
                                    ClientesTraidos2 = WebServicesAerolinea_Cliente2.getClientes(); 
                                     
                                %> 



                                <div id="tabla-respuesta" class="table-responsive">
                                    <table id="datatable" class="table table-striped table-bordered table-hover">

                                        <thead>
                                            <tr>
                                                <th style="text-align: center;"><b>ID Aerolínea</b></th>
                                                <th style="text-align: center;"><b>Id_Cliente</b></th>
                                                <th style="text-align: center;"><b>Nombre_Cliente</b></th>
                                                <th style="text-align: center;"><b>Apellido_Cliente</b></th>
                                                <th style="text-align: center;"><b>Email_Cliente</b></th>
                                                <th style="text-align: center;"><b>Nacionalidad</b></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                           
                                            
                                            
                                            <%
                                                for (int i = 0; i < ClientesTraidos.size(); i++) {
                                            %>

                                            <tr>
                                                <td>1</td>
                                                <td><%out.println(ClientesTraidos.get(i).getIdCliente());%></td>
                                                <td><%out.println(ClientesTraidos.get(i).getNombreCliente());%></td>
                                                <td><%out.println(ClientesTraidos.get(i).getApellidoCliente());%></td>
                                                <td><%out.println(ClientesTraidos.get(i).getEmailCliente());%></td>
                                                <td><%out.println(ClientesTraidos.get(i).getNacionalidad());%></td>
                                            </tr>  
                                            <%
                                                }
                                            %>
                                            
                                            <!-- Entre estos tags poner el TRES -->
                           
                                    
        <%
            for (int i = 0; i < ClientesTraidos2.size(); i++) {
        %>

        <tr>
            <td>2</td>
            <td><%out.println(ClientesTraidos2.get(i).getIdCliente());%></td>
            <td><%out.println(ClientesTraidos2.get(i).getNombreCliente());%></td>
            <td><%out.println(ClientesTraidos2.get(i).getApellidoCliente());%></td>
            <td><%out.println(ClientesTraidos2.get(i).getEmailCliente());%></td>
            <td><%out.println(ClientesTraidos2.get(i).getNacionalidad());%></td>
        </tr>  
        <%
            }
        %>
        
                                   <!-- Entre estos tags poner el TRES -->

                                        </tbody>


                                    </table>
                                </div>

                            </div>
                        </div>



                        <div class="panel-heading">
                            <h3 class="panel-title">Registrar un Nuevo Cliente en Aerolínea</h3>
                        </div>
                        <div class="panel-body">


                            <div class="row">

                                <form action="" method="post" class="form-signin">
                                    <div class="col-md-6">
                                        <label>ID de Aerolínea</label>
                                        <input  id="IdAerolineaCliente" name="IdAerolineaCliente" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>
                                    <div class="col-md-6">
                                        <label>Nombre:</label>
                                        <input  id="nombre" name="nombre" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>

                                    <div class="col-md-6">
                                        <label>Apellido:</label>
                                        <input id="apellido" name="apellido" type="text" class="form-control"  onchange="cargarListado();" value= "" >
                                    </div>
                                    <div class="col-md-6">
                                        <label>Email:</label>
                                        <input  id="email" name="email" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>

                                    <div class="col-md-6">
                                        <label>Nacionalidad:</label>
                                        <input id="nacionalidad" name="nacionalidad" type="text" class="form-control"  onchange="cargarListado();" value= "" >
                                    </div>
                                    <br>
                                    <div class="col-md-6">
                                        <br>
                                        <button class="btn btn-lg btn-primary btn-block" type="submit">Registrar Usuario</button>
                                    </div>
                                    <div class="col-md-6">

                                        <%
                                            String nombre = "", apellido = "", email = "", nacionalidad = "", idaerolinea = "";
                                            if (request.getParameter("nombre") != null || nombre != "") {
                                                nombre = request.getParameter("nombre");
                                            }
                                            if (request.getParameter("apellido") != null || apellido != "") {
                                                apellido = request.getParameter("apellido");
                                            }
                                            if (request.getParameter("email") != null || email != "") {
                                                email = request.getParameter("email");
                                            }
                                            if (request.getParameter("nacionalidad") != null || nacionalidad != "") {
                                                nacionalidad = request.getParameter("nacionalidad");
                                            }
                                            if (request.getParameter("IdAerolineaCliente") != null || idaerolinea != "") {
                                                idaerolinea = request.getParameter("IdAerolineaCliente");
                                            }
                                        %>

                                        <%
                                            if (nombre != null && apellido != null && email != null && nacionalidad != null && idaerolinea != null
                                                    && nombre != "" && apellido != "" && email != "" && nacionalidad != "" && idaerolinea != "") {
                                                try {
                                                    if (idaerolinea.equals("1")) { //Si no funciona, probar con idaerolinea.equals("1")
                                                        WebServicesAerolinea_Cliente.nuevoCliente(nombre, apellido, email, nacionalidad);
                                                    }
                                                    if (idaerolinea.equals("2")) {
                                                        WebServicesAerolinea_Cliente2.nuevoCliente(nombre, apellido, email, nacionalidad);
                                                    }

                                        %>
                                        <br>
                                        <div class="alert alert-success" role="alert">
                                            <% out.println("Registro exitoso del cliente " + nombre + " " + apellido + " en la aerolínea " + idaerolinea + ".");
                                            %>
                                        </div>
                                        <%
                                        } catch (Exception e) {
                                            e.printStackTrace();

                                        %>
                                        <br>
                                        <div class="alert alert-danger" role="alert">
                                            <% out.println("Error en el registro del cliente " + nombre + " " + apellido + " en la aerolínea " + idaerolinea + ".");
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


                    </div>
                </div> 

            </div>  
        </div>  
    </body>                    