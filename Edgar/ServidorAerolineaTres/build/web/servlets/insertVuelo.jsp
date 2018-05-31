<%-- 
    Document   : insertVuelo
    Created on : May 11, 2018, 10:36:25 AM
    Author     : e-emi
--%>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="org.db.Conexion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            Conexion conexion = new Conexion();
            Connection connection = conexion.conectar();
            CallableStatement cs = null;
        %>
        <%String origen_vuelo = request.getParameter("origen_vuelo");%>
        <%String destino_vuelo = request.getParameter("destino_vuelo");%>
        <%String capacidad_vuelo = request.getParameter("capacidad_vuelo");%>
        <%String fecha_partida = request.getParameter("fecha_partida");%>
        <%String fecha_llegada = request.getParameter("fecha_llegada");%>
        <%String precio_unitario = request.getParameter("precio_unitario");%>
        <%
            try {
                cs = connection.prepareCall("{CALL crear_vuelo(?,?,?,?,?,?)}");
                cs.setString(1, origen_vuelo);
                cs.setString(2, destino_vuelo);
                cs.setInt(3, Integer.parseInt(capacidad_vuelo));
                cs.setString(4, fecha_partida);
                cs.setString(5, fecha_llegada);
                cs.setDouble(6, Double.parseDouble(precio_unitario));
                cs.execute();
                cs.close();
                connection.close();
                out.println("Inserción Exitosa.");
            } catch(Exception e){
                e.printStackTrace();
                out.println("Error al tratar de insertar el vuelo: \n"+e);
            }
            
        %>
        <a href="../operaciones/crearVuelo.jsp">Regresar a formulario</a>
    </body>
</html>
