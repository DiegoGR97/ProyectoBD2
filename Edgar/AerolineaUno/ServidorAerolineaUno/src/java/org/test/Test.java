/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.data.Vuelos;
import org.db.Conexion;

/**
 *
 * @author e-emi
 */
public class Test {
    public static void main(String[] args) {
        Conexion conexion = new Conexion();
        Connection connection = conexion.conectar();
        
        ResultSet rs = null;
        try {
            rs = connection.createStatement().executeQuery("SELECT * FROM vuelos");
            rs.next();
            System.out.println(rs.getString(2));
        } catch (SQLException ex) {
            Logger.getLogger(Test.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
