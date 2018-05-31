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
        <%String nombre_agencia = request.getParameter("nombre_agencia");%>
        <%String email_agencia = request.getParameter("email_agencia");%>
        <%
            try {
                cs = connection.prepareCall("{CALL crear_agencia_viaje(?,?)}");
                cs.setString(1, nombre_agencia);
                cs.setString(2, email_agencia);
                cs.execute();
                cs.close();
                connection.close();
                out.println("Inserción Exitosa.");
            } catch(Exception e){
                e.printStackTrace();
                out.println("Error al tratar de insertar la agencia de viajes.\n"+e);
            }
        %>
        <a href="../operaciones/crearAgenciaViaje.jsp">Regresar a formulario</a>
    </body>
</html>
