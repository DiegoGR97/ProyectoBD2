<%-- 
    Document   : insertVuelo
    Created on : May 11, 2018, 10:36:25 AM
    Author     : e-emi
--%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
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
            ResultSet rs = null;
            CallableStatement cs = null;
        %>
        <%String id_boleto_comprado = request.getParameter("id_boleto_comprado");%>
        <%
            String email_cliente = "";
            try {
                cs = connection.prepareCall("{CALL cancelar_boleto(?)}");
                cs.setInt(1, Integer.parseInt(id_boleto_comprado));
                cs.executeUpdate();
                cs.close();
                
                rs = connection.createStatement().executeQuery("select c.email_cliente from clientes c, boletos_comprados bc where bc.id_cliente = c.ID_CLIENTE and bc.id_boleto_comprado="+id_boleto_comprado);
                rs.next();
                email_cliente = rs.getString("email_cliente");
                rs.close();
                out.println("Se ha cancelado el boleto " + id_boleto_comprado + " exitosamente.");
                try {
                    String host = "smtp.gmail.com";
                    String user = "vallejo151328@unis.edu.gt";
                    String pass = "4B11CDED6A=";
                    String to = email_cliente;
                    String from = "vallejo151328@unis.edu.gt";
                    String subject = "VUELO CANCELADO";
                    String messageText = "Lamentamos informarle que su vuelo con número de boleto " + id_boleto_comprado + " ha sido cancelado.";
                    boolean sessionDebug = false;

                    Properties properties = System.getProperties();
                    properties.put("mail.smtp.starttls.enable", true);
                    properties.put("mail.smtp.host", host);
                    properties.put("mail.smtp.port", "587");
                    properties.put("mail.smtp.auth", "true");
                    properties.put("mail.smtp.starttls.required","true");

                    java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
                    Session mailSession = Session.getDefaultInstance(properties, null);
                    mailSession.setDebug(sessionDebug);
                    Message msg = new MimeMessage(mailSession);
                    msg.setFrom(new InternetAddress(from));
                    InternetAddress[] address = {new InternetAddress(to)};
                    msg.setRecipients(Message.RecipientType.TO, address);
                    msg.setSubject(subject);
                    //msg.setSentDate(new Date());
                    msg.setText(messageText);

                    Transport transport = mailSession.getTransport("smtp");
                    transport.connect(host, user, pass);
                    transport.sendMessage(msg, msg.getAllRecipients());
                    transport.close();
                } catch(Exception e) {
                    out.println("Error al enviar correo al cliente.\n" + e);
                }
                out.println("Se ha enviado un correo al email del cliente " + email_cliente + ".");
                connection.close();
            } catch(Exception e){
                e.printStackTrace();
                out.println("Error al tratar de borrar el boleto \n"+e);
                out.println("No se ha podido enviar el correo al cliente");
            }
        %>
        <a href="../operaciones/cancelarBoleto.jsp">Regresar a formulario</a>
    </body>
</html>
