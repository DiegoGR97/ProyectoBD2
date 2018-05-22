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
        <%String nombre_cliente = request.getParameter("nombre_cliente");%>
        <%String apellido_cliente = request.getParameter("apellido_cliente");%>
        <%String email_cliente = request.getParameter("email_cliente");%>
        <%String nacionalidad = request.getParameter("nacionalidad");%>
        <%
            try {
                cs = connection.prepareCall("{CALL crear_cliente(?,?,?,?)}");
                cs.setString(1, nombre_cliente);
                cs.setString(2, apellido_cliente);
                cs.setString(3, email_cliente);
                cs.setString(4, nacionalidad);
                cs.execute();
                cs.close();
                connection.close();
                out.println("Inserción Exitosa.");
            } catch(Exception e){
                e.printStackTrace();
                out.println("Error al tratar de insertar el cliente \n"+e);
            }
            
        %>
        <a href="../operaciones/crearCliente.jsp">Regresar a formulario</a>
    </body>
</html>
