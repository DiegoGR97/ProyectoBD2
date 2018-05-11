/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ProbarConexion;
import Data.Usuario_Agencia;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Diego
 */
public class ProbandoConexion {
    public static void main(String[] args) {
        Conexion conexion = new Conexion();
        Connection connection = conexion.conectar();
        ResultSet rs = null;
         List<Usuario_Agencia> usuarioData = new ArrayList<Usuario_Agencia>();
         try {
            rs = connection.createStatement().executeQuery("select id_usuario, usuario_agencia, contra_agencia from USUARIOS_AGENCIA");
            while(rs.next())
            {
                Usuario_Agencia usuario = new Usuario_Agencia(rs.getInt("id_usuario"), rs.getString("usuario_agencia") , rs.getString("contra_agencia"));
                System.out.println("La data del usuario actual imprimiendose: " + usuario.id_usuario + ", "
                        + usuario.usuario_agencia + ", " + usuario.contra_agencia + "\n");
                usuarioData.add(usuario);
            }
            System.out.println("La data del usuario = " + usuarioData + "\n");
            //return usuarioData;
        } catch (SQLException ex) {
            System.out.println("Hubo una excepción." + ex);
            //Logger.getLogger(VuelosDao.class.getName()).log(Level.SEVERE, null, ex);
            //return null;
        }
    
}
}

