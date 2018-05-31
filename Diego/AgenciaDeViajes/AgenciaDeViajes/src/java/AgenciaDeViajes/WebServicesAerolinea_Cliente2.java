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

    public static java.util.List<org.ws.Vuelos> getVuelos() {
        org.ws.OperacionesAerolineaDos_Service service = new org.ws.OperacionesAerolineaDos_Service();
        org.ws.OperacionesAerolineaDos port = service.getOperacionesAerolineaDosPort();
        return port.getVuelos();
    }

    public static java.util.List<org.ws.Vuelos> getCertainVuelos(java.lang.String origen, java.lang.String destino) {
        org.ws.OperacionesAerolineaDos_Service service = new org.ws.OperacionesAerolineaDos_Service();
        org.ws.OperacionesAerolineaDos port = service.getOperacionesAerolineaDosPort();
        return port.getCertainVuelos(origen, destino);
    }

    public static java.util.List<org.ws.Clientes> getClientes() {
        org.ws.OperacionesAerolineaDos_Service service = new org.ws.OperacionesAerolineaDos_Service();
        org.ws.OperacionesAerolineaDos port = service.getOperacionesAerolineaDosPort();
        return port.getClientes();
    }

    public static String nuevoCliente(java.lang.String nombreCliente, java.lang.String apellidoCliente, java.lang.String emailCliente, java.lang.String nacionalidad) {
        org.ws.OperacionesAerolineaDos_Service service = new org.ws.OperacionesAerolineaDos_Service();
        org.ws.OperacionesAerolineaDos port = service.getOperacionesAerolineaDosPort();
        return port.nuevoCliente(nombreCliente, apellidoCliente, emailCliente, nacionalidad);
    }

    public static String comprarBoletoAgenciaUno(java.lang.String idVuelo, java.lang.String idCliente) {
        org.ws.OperacionesAerolineaDos_Service service = new org.ws.OperacionesAerolineaDos_Service();
        org.ws.OperacionesAerolineaDos port = service.getOperacionesAerolineaDosPort();
        return port.comprarBoletoAgenciaUno(idVuelo, idCliente);
    }

    public static boolean cancelarBoleto(int idBoleto) {
        org.ws.OperacionesAerolineaDos_Service service = new org.ws.OperacionesAerolineaDos_Service();
        org.ws.OperacionesAerolineaDos port = service.getOperacionesAerolineaDosPort();
        return port.cancelarBoleto(idBoleto);
    }

    public static java.util.List<org.ws.OrigenDestinoVuelos> getOrigenDestino() {
        org.ws.OperacionesAerolineaDos_Service service = new org.ws.OperacionesAerolineaDos_Service();
        org.ws.OperacionesAerolineaDos port = service.getOperacionesAerolineaDosPort();
        return port.getOrigenDestino();
    }


}
