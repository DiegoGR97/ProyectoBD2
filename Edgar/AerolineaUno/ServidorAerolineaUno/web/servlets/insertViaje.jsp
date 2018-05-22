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
        <%String id_viaje = request.getParameter("id_viaje");%>
        <%String origen_viaje = request.getParameter("origen_viaje");%>
        <%String destino_viaje = request.getParameter("destino_viaje");%>
        <%
            try {
                cs = connection.prepareCall("{CALL crear_viaje(?,?,?)}");
                cs.setInt(1, Integer.parseInt(id_viaje));
                cs.setString(2, origen_viaje);
                cs.setString(3, destino_viaje);
                cs.execute();
                cs.close();
                connection.close();
                out.println("Inserción Exitosa.");
            } catch(Exception e){
                e.printStackTrace();
                out.println("Error al tratar de insertar el viaje \n"+e);
            }
            
        %>
        <a href="../operaciones/crearViaje.jsp">Regresar a formulario</a>
    </body>
</html>
