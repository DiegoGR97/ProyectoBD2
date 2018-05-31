/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author e-emi
 */
public class Conexion {
    public Connection conectar(){
        String url = "jdbc:oracle:thin:@localhost:1521:aerolineatr";
        String username = "Edgar";
        String password = "pass123";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, username, password);
            return conn;
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
