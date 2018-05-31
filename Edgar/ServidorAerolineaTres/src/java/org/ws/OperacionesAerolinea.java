/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ws;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.datos.Vuelos;
import org.datos.Clientes;
import org.datos.OrigenDestinoVuelos;
import org.datos.Viajes;
import org.db.Conexion;
import org.db.VuelosDao;

/**
 *
 * @author e-emi
 */
@WebService(serviceName = "OperacionesAerolinea")
public class OperacionesAerolinea {
    @WebMethod(operationName = "getVuelos")
    public List<Vuelos> getVuelos() {        
        
        Conexion conexion = new Conexion();
        Connection connection = conexion.conectar();
        ResultSet rs = null;
        Vuelos vuelos = null;
        List<Vuelos> vuelosData = new ArrayList<Vuelos>();
        try {
            rs = connection.createStatement().executeQuery("SELECT id_vuelo, origen_vuelo, destino_vuelo, capacidad_vuelo, boletos_comprados, fecha_partida, fecha_llegada, precio_unitario FROM vuelos");
            while(rs.next())
            {
                vuelos = new Vuelos();
                vuelos.setId_vuelo(rs.getInt("id_vuelo"));
                vuelos.setOrigen_vuelo(rs.getString("origen_vuelo"));
                vuelos.setDestino_vuelo(rs.getString("destino_vuelo"));
                vuelos.setCapacidad_vuelo(rs.getInt("capacidad_vuelo"));
                vuelos.setBoletos_comprados(rs.getInt("boletos_comprados"));
                vuelos.setFecha_partida(rs.getString("fecha_partida"));
                vuelos.setFecha_llegada(rs.getString("fecha_llegada"));
                vuelos.setPrecio_unitario(rs.getDouble("precio_unitario"));
                vuelosData.add(vuelos);
            }
            rs.close();
            connection.close();
            return vuelosData;
        } catch (SQLException ex) {
            Logger.getLogger(VuelosDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getCertainVuelos")
    public List<Vuelos> operation(@WebParam(name = "origen") String origen, @WebParam(name = "destino") String destino) {
        Conexion conexion = new Conexion();
        Connection connection = conexion.conectar();
        ResultSet rs = null;
        Vuelos vuelos = null;
        List<Vuelos> vuelosData = new ArrayList<Vuelos>();
        try {
            rs = connection.createStatement().executeQuery("SELECT id_vuelo, origen_vuelo, destino_vuelo, capacidad_vuelo, boletos_comprados, fecha_partida, fecha_llegada, precio_unitario FROM vuelos WHERE origen_vuelo='"+origen+"' OR destino_vuelo='"+destino+"'");
            while(rs.next())
            {
                vuelos = new Vuelos();
                vuelos.setId_vuelo(rs.getInt("id_vuelo"));
                vuelos.setOrigen_vuelo(rs.getString("origen_vuelo"));
                vuelos.setDestino_vuelo(rs.getString("destino_vuelo"));
                vuelos.setCapacidad_vuelo(rs.getInt("capacidad_vuelo"));
                vuelos.setBoletos_comprados(rs.getInt("boletos_comprados"));
                vuelos.setFecha_partida(rs.getString("fecha_partida"));
                vuelos.setFecha_llegada(rs.getString("fecha_llegada"));
                vuelos.setPrecio_unitario(rs.getDouble("precio_unitario"));
                vuelosData.add(vuelos);
            }
            rs.close();
            connection.close();
            return vuelosData;
        } catch (SQLException ex) {
            Logger.getLogger(VuelosDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getClientes")
    public List<Clientes> getClientes() {
        Conexion conexion = new Conexion();
        Connection connection = conexion.conectar();
        ResultSet rs = null;
        Clientes clientes = null;
        List<Clientes> clientesData = new ArrayList<Clientes>();
        try {
            rs = connection.createStatement().executeQuery("SELECT id_cliente, nombre_cliente, apellido_cliente, email_cliente, nacionalidad FROM clientes");
            while(rs.next()){
                clientes = new Clientes();
                clientes.setId_cliente(rs.getInt("id_cliente"));
                clientes.setNombre_cliente(rs.getString("nombre_cliente"));
                clientes.setApellido_cliente(rs.getString("apellido_cliente"));
                clientes.setEmail_cliente(rs.getString("email_cliente"));
                clientes.setNacionalidad(rs.getString("nacionalidad"));
                clientesData.add(clientes);
            }
            rs.close();
            connection.close();
            return clientesData;
        } catch(SQLException ex){
          ex.printStackTrace();
          return null;
        }
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "nuevoCliente")
    public String nuevoCliente(@WebParam(name = "nombre_cliente") String nombre_cliente, @WebParam(name = "apellido_cliente") String apellido_cliente, @WebParam(name = "email_cliente") String email_cliente, @WebParam(name = "nacionalidad") String nacionalidad) {
        Conexion conexion = new Conexion();
        Connection connection = conexion.conectar();
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement("INSERT INTO clientes (nombre_cliente, apellido_cliente, email_cliente, nacionalidad) VALUES (?,?,?,?)");
            ps.setString(1, nombre_cliente);
            ps.setString(2, apellido_cliente);
            ps.setString(3, email_cliente);
            ps.setString(4, nacionalidad);
            ps.executeUpdate();
            ps.close();                
            connection.close();
            return "Inserción del cliente " + nombre_cliente + " " + apellido_cliente + " exitosa."; 
        } catch(SQLException ex){
            ex.printStackTrace();
            return null;
        }
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "comprarBoletoAgenciaUno")
    public String comprarBoletoAgenciaUno(@WebParam(name = "id_vuelo") String id_vuelo, @WebParam(name = "id_cliente") String id_cliente) {
        Conexion conexion = new Conexion();
        Connection connection = conexion.conectar();
        PreparedStatement ps = null;
        ResultSet rs = null;
        int x;
        try {
            ps = connection.prepareStatement("{CALL crear_boleto_agencia_uno(?,?)}");
            ps.setInt(1, Integer.parseInt(id_vuelo));
            ps.setInt(2, Integer.parseInt(id_cliente));
            ps.executeUpdate();
            ps.close();
            
            
            rs = connection.createStatement().executeQuery("SELECT id_boleto_comprado FROM boletos_comprados ORDER BY id_boleto_comprado DESC");
            rs.next();
            x = rs.getInt(1);
            rs.close();
            connection.close();
            return x+"";
        } catch(SQLException ex){
            ex.printStackTrace();
            return "Error" + ex;
        }
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "cancelarBoleto")
    public boolean cancelarBoleto(@WebParam(name = "id_boleto") int id_boleto) {
        //TODO write your implementation code here:
         
            Conexion conexion = new Conexion();
            Connection connection = conexion.conectar();
            CallableStatement cs = null;
            ResultSet rs = null;
            String id_boleto_comprado = id_boleto+"";
            String email_cliente = "";
            String email_agencia = "";
            try {
                cs = connection.prepareCall("{CALL cancelar_boleto(?)}");
                cs.setInt(1, Integer.parseInt(id_boleto_comprado));
                cs.executeUpdate();
                cs.close();
                
                rs = connection.createStatement().executeQuery("select c.email_cliente from clientes c, boletos_comprados bc where bc.id_cliente = c.ID_CLIENTE and bc.id_boleto_comprado="+id_boleto);
                rs.next();
                email_cliente = rs.getString("email_cliente");
                try {
                    String host = "smtp.gmail.com";
                    String user = "vallejo151328@unis.edu.gt";
                    String pass = "4B11CDED6A=";
                    String to = email_cliente;
                    String from = "vallejo151328@unis.edu.gt";
                    String subject = "VUELO CANCELADO A CLIENTE";
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
                    System.out.println("Error al enviar correo al cliente.\n" + e);
                    return false;
                }
            } catch(Exception e){
                e.printStackTrace();
                System.out.println("Error al tratar de borrar el boleto \n"+e);
                System.out.println("No se ha podido enviar el correo al cliente");
                return false;
            }
            //MENSAJE A AGENCIA
            try {
                rs = connection.createStatement().executeQuery("select av.email_agencia from agencias_viajes av, boletos_comprados bc where bc.id_agencia_viaje = av.id_agencia_viaje and bc.id_boleto_comprado="+id_boleto);
                rs.next();
                email_agencia = rs.getString("email_agencia");
                if(email_agencia.equals("sinAgencia")){
                    
                } else{
                    try {
                    String host = "smtp.gmail.com";
                    String user = "vallejo151328@unis.edu.gt";
                    String pass = "4B11CDED6A=";
                    String to = email_agencia;
                    String from = "vallejo151328@unis.edu.gt";
                    String subject = "VUELO CANCELADO A LA AGENCIA";
                    String messageText = "Lamentamos informarle que su compra de vuelo con número de boleto " + id_boleto_comprado + " ha sido cancelado.";
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
                    System.out.println("Error al enviar correo a la agencia.\n" + e);
                    return false;
                    }
                }
                
                connection.close();
                return true;
            } catch(Exception e){
                e.printStackTrace();
                System.out.println("Error al tratar de borrar el boleto \n"+e);
                System.out.println("No se ha podido enviar el correo a la agencia");
                return false;
            }
    }

    /**
     * Web service operation
     * @return 
     */
    @WebMethod(operationName = "getOrigenDestino")
    public List<OrigenDestinoVuelos> getOrigenDestino() {
        Conexion conexion = new Conexion();
        Connection connection = conexion.conectar();
        List<OrigenDestinoVuelos> origenDestinoVuelosData = new ArrayList<OrigenDestinoVuelos>();
        OrigenDestinoVuelos origenDestinoVuelos = null;
        ResultSet rs = null;
        try {
            rs = connection.createStatement().executeQuery("SELECT DISTINCT origen_vuelo, destino_vuelo FROM vuelos");
            while(rs.next()){
                origenDestinoVuelos = new OrigenDestinoVuelos();
                origenDestinoVuelos.setOrigen_vuelo(rs.getString("origen_vuelo"));
                origenDestinoVuelos.setDestino_vuelo(rs.getString("destino_vuelo"));
                origenDestinoVuelosData.add(origenDestinoVuelos);
            }
            rs.close();
            connection.close();
            return origenDestinoVuelosData;
        } catch(SQLException sqle){
            sqle.printStackTrace();
            return null;
        }
    }   
}

