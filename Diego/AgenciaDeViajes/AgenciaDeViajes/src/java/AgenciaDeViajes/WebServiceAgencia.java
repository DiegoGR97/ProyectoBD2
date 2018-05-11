/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AgenciaDeViajes;

import Data.Usuario_Agencia;
import ProbarConexion.Conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Diego
 */
@WebService(serviceName = "WebServiceAgencia")
public class WebServiceAgencia {
    
    /**
     * This is a sample web service operation
     * @param id_usuario
     */
    @WebMethod(operationName = "probarconexion")
    public List<Usuario_Agencia> WSAgencia(@WebParam(name = "id_usuario_WP") int id_usuario_WP) {
        Conexion conexion = new Conexion();
        Connection connection = conexion.conectar();
        int id_usuario = id_usuario_WP;
        ResultSet rs = null;
         List<Usuario_Agencia> usuarioData = new ArrayList<Usuario_Agencia>();
         try {
            rs = connection.createStatement().executeQuery("select id_usuario, usuario_agencia, contra_agencia from USUARIOS_AGENCIA where id_usuario = " + id_usuario);
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
        
        return usuarioData;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "RegistrarUsuarioAgencia")
    public String RegistrarUsuarioAgencia() {
        //TODO write your implementation code here:
        return null;
    }
}
