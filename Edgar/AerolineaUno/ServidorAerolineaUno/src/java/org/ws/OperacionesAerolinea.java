/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ws;

import java.sql.Connection;
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
            return vuelosData;
        } catch (SQLException ex) {
            Logger.getLogger(VuelosDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
