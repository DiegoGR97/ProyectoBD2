package AgenciaDeViajes;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Diego
 */
public class WebServicesAerolinea_Cliente2 {

    public static String comprarBoletoAgenciaUno(java.lang.String idVuelo, java.lang.String idCliente) {
        org.ws.OperacionesAerolinea_Service service = new org.ws.OperacionesAerolinea_Service();
        org.ws.OperacionesAerolinea port = service.getOperacionesAerolineaPort();
        return port.comprarBoletoAgenciaUno(idVuelo, idCliente);
    }

    public static java.util.List<org.ws.Vuelos> getCertainVuelos(java.lang.String origen, java.lang.String destino) {
        org.ws.OperacionesAerolinea_Service service = new org.ws.OperacionesAerolinea_Service();
        org.ws.OperacionesAerolinea port = service.getOperacionesAerolineaPort();
        return port.getCertainVuelos(origen, destino);
    }

    public static java.util.List<org.ws.Clientes> getClientes() {
        org.ws.OperacionesAerolinea_Service service = new org.ws.OperacionesAerolinea_Service();
        org.ws.OperacionesAerolinea port = service.getOperacionesAerolineaPort();
        return port.getClientes();
    }

    public static java.util.List<org.ws.Vuelos> getVuelos() {
        org.ws.OperacionesAerolinea_Service service = new org.ws.OperacionesAerolinea_Service();
        org.ws.OperacionesAerolinea port = service.getOperacionesAerolineaPort();
        return port.getVuelos();
    }

    public static String nuevoCliente(java.lang.String nombreCliente, java.lang.String apellidoCliente, java.lang.String emailCliente, java.lang.String nacionalidad) {
        org.ws.OperacionesAerolinea_Service service = new org.ws.OperacionesAerolinea_Service();
        org.ws.OperacionesAerolinea port = service.getOperacionesAerolineaPort();
        return port.nuevoCliente(nombreCliente, apellidoCliente, emailCliente, nacionalidad);
    }
    
}
