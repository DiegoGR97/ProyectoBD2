<%-- 
    Document   : index.jsp
    Created on : May 10, 2018, 6:11:26 PM
    Author     : e-emi
--%>
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
			Aerolinea
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
              <h3 class="panel-title">Aerolinea </h3>
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
                                                
                                                
                                                <%
          Connection con = null;

      String url = "jdbc:oracle:thin:@localhost:1521:aerolineaun";
        String username = "Edgar";
        String password = "pass123";
        try
        {
        con = DriverManager.getConnection(url, username, password);
        ResultSet rs = con.createStatement().executeQuery("SELECT * FROM vuelos");
        while(rs.next())
        {
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
    } catch(Exception e)
        {
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
