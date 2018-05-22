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
            PreparedStatement ps = null;
            CallableStatement cs = null;
        %>
        <%String id_boleto_comprado = request.getParameter("id_boleto_comprado");%>
        <%
            try {
                cs = connection.prepareCall("{CALL cancelar_boleto(?)}");
                cs.setInt(1, Integer.parseInt(id_boleto_comprado));
                cs.executeUpdate();
                cs.close();
                connection.close();
                out.println("Boleto cancelado exitosamente.");
            } catch(Exception e){
                e.printStackTrace();
                out.println("Error al tratar de borrar el boleto \n"+e);
            }
        %>
        <a href="../operaciones/cancelarBoleto.jsp">Regresar a formulario</a>
    </body>
</html>
