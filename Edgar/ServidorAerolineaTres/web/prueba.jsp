<%-- 
    Document   : prueba
    Created on : May 29, 2018, 10:30:18 PM
    Author     : Edgar Vallejo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.db.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    <body>
        <h1>Hello World!</h1>
    <center>
        
        <select name="origen_vuelo" class="form-control" style="width:250px;">
            <option value="-1">Origen</option>
            <%
                Conexion conexion = new Conexion();
                Connection connection = conexion.conectar();
                ResultSet rs = null;
                try {
                    rs = connection.createStatement().executeQuery("select distinct origen_vuelo from vuelos");
                    while(rs.next()){
                        %>
                        <option value="<%=rs.getString("origen_vuelo")%>"><%=rs.getString("origen_vuelo")%></option>
                        <%
                    }
                    
                } catch(Exception e) {
                    e.printStackTrace();
                    out.println(e);
                }
            %>
        </select>
    </center>

        
    </body>
</html>
