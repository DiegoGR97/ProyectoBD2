/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AgenciaDeViajes;

import Data.Usuario_Agencia;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.ws.Vuelos;

/**
 *
 * @author Diego
 */
public class Aerolinea_getVuelos_2 {
    public static java.util.List<org.ws.Vuelos> getVuelos() {
        org.ws.OperacionesAerolinea_Service service = new org.ws.OperacionesAerolinea_Service();
        org.ws.OperacionesAerolinea port = service.getOperacionesAerolineaPort();
        return port.getVuelos();
    }
    
}
