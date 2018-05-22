/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.datos.Vuelos;

/**
 *
 * @author e-emi
 */
public class VuelosDao {
    public List<Vuelos> getVuelos(String origen_vuelo, String destino_vuelo){
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
            return vuelosData;
            } catch (SQLException ex) {
                Logger.getLogger(VuelosDao.class.getName()).log(Level.SEVERE, null, ex);
                return null;
            }
    }
    
    public String crearVuelo(String origen_vuelo, String destino_vuelo, int capacidad_vuelo, String fecha_partida, String fecha_llegada, double precio_unitario){
        Conexion conexion = new Conexion();
        Connection connection = conexion.conectar();
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement("INSERT INTO vuelos (origen_vuelo, destino_vuelo, capacidad_vuelo, fecha_partida, fecha_llegada, precio_unitario) values (?,?,?,?,?,?)");
            ps.setString(1, origen_vuelo);
            ps.setString(2, destino_vuelo);
            ps.setInt(3, capacidad_vuelo);
            ps.setString(4, fecha_partida);
            ps.setString(5, fecha_llegada);
            ps.setDouble(6, precio_unitario);
            ps.executeUpdate();
            String message = "Se ha ejecutado la inserción exitosamente.";
            return message;
        } catch (SQLException ex) {
            Logger.getLogger(VuelosDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
}
