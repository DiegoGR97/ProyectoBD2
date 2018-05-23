/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ws;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import org.datos.Vuelos;
import org.datos.Clientes;
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
        int agenciaUno = 2;
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
}

