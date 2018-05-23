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
<%@page import="java.util.Arrays"%>
<%@page import="AgenciaDeViajes.WebServicesAerolinea_Cliente"%>

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
                            <h3 class="panel-title">Registrar Usuario de Agencia</h3>
                        </div>
                        <div class="panel-body">


                            <div class="row">

                                <form action="" method="post" class="form-signin">

                                    <div class="col-md-6">
                                        <label>Username a Asignarse:</label>
                                        <input  id="username" name="username" type="text" class="form-control"  onchange="cargarListado();" value= "" > 
                                    </div>

                                    <div class="col-md-6">
                                        <label>Contraseña a Asignarse:</label>
                                        <input id="password" name="password" type="text" class="form-control"  onchange="cargarListado();" value= "" >
                                    </div>
                                    <br>
                                    <div class="col-md-6">
                                        <br>
                                        <button class="btn btn-lg btn-primary btn-block" type="submit">Registrar Usuario</button>
                                    </div>
                                    <div class="col-md-6">




                                        <%
                                            String username = "", password = "";
                                            if (request.getParameter("username") != null || username != "") {
                                                username = request.getParameter("username");
                                            }
                                            if (request.getParameter("password") != null || password != "") {
                                                password = request.getParameter("password");
                                            }
                                            Conexion conexion = new Conexion();
                                            Connection connection = conexion.conectar();
                                            CallableStatement cs = null;
                                        %>

                                        <%
                                            if (username != null && password != null && username != "" && password != "") {
                                                try {
                                                    cs = connection.prepareCall("{CALL SP_CrearUsuario(?,?)}");
                                                    cs.setString(1, username);
                                                    cs.setString(2, password);
                                                    cs.execute();
                                                    cs.close();
                                                    connection.close();

                                        %>
                                        <br>
                                        <div class="alert alert-success" role="alert">
                                            <% out.println("Registro exitoso del usuario " + username + ".");
                                            %>
                                        </div>
                                        <%
                                        } catch (Exception e) {
                                            e.printStackTrace();

                                        %>
                                        <br>
                                        <div class="alert alert-danger" role="alert">
                                            <% out.println("Error en el registro del usuario " + username + ".");
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