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
        <%String id_vuelo = request.getParameter("id_vuelo");%>
        <%String id_cliente = request.getParameter("id_cliente");%>
        <%
            try {
                cs = connection.prepareCall("{CALL crear_boleto(?,?,?)}");
                cs.setInt(1, Integer.parseInt(id_viaje));
                cs.setInt(2, Integer.parseInt(id_vuelo));
                cs.setInt(3, Integer.parseInt(id_cliente));
                cs.execute();
                cs.close();
                connection.close();
                out.println("Inserción Exitosa.");
            } catch(Exception e){
                e.printStackTrace();
                out.println("Error al tratar de insertar el boleto \n"+e);
            }
        %>
        
        <%
          Conexion con = new Conexion();
          Connection conn = con.conectar();
          ResultSet rs = null;
          int x = 0;
          try{
                rs = conn.createStatement().executeQuery("SELECT id_boleto_comprado FROM boletos_comprados ORDER BY id_boleto_comprado DESC");
                rs.next();
                x = rs.getInt(1);
          } catch(SQLException ex){
              out.println(ex+"");
          }  
        %>
        <h1>Su número de boleto es: <%out.println(x);%></h1>
        
        <a href="/ServidorAerolineaUno">Regresar a formulario</a>
    </body>
</html>
