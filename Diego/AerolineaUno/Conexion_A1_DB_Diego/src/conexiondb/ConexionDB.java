/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexiondb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author e-emi
 */
public class ConexionDB 
{
    public Connection conectar()
    {
        Connection conn;
        try 
        {
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:AGENCIAVIAJE", "hr", "admin");
            System.out.println("Funciono");
            return conn;
        } 
        catch (SQLException ex) 
        {
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, "Problema al hacer la conexión", ex);
        }
        return null;
    }  
}