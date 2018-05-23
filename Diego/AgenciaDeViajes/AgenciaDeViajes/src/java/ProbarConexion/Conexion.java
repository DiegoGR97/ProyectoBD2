/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ProbarConexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Diego
 */
public class Conexion {
    public Connection conectar(){
        String url = "jdbc:oracle:thin:@localhost:1521:agenciaviaje";
        String username = "Diego";
        String password = "root";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, username, password);
            System.out.println("Sí se logró la conexión. \n" + conn);
            return conn;
        } catch (SQLException ex) {
             System.out.println("Hubo una excepción en el DriverManager.getConnection de la función Conectar en Conexion.java.");
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}