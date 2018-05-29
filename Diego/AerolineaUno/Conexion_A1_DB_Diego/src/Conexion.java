
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author e-emi
 */
public class Conexion 
{
    public static void main(String[] args) 
    {
        Connection conn = null;
        try
        {
            String driverName = "oracle.jdbc.OracleDriver";
            Class.forName(driverName);
            String serverName = "localhost";
            String serverPort = "1521";
            String sid = "AGENCIAVIAJE";
            String url = "jdbc:oracle:thin:@"+serverName+":"+serverPort+":"+sid;
            String username = "Edgar";
            String password = "pass123";
            conn = DriverManager.getConnection(url, username, password);
            
        }
        catch(ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        
        try
        {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM clientes");
            while(rs.next())
            {
                System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4) + " " + rs.getString(5));
            }
            rs.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
