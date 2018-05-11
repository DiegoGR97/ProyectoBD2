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
public class Aerolinea_getVuelos_1 {
    //public static java.util.List <Vuelos> Aerolinea_getVuelos () {
    //public static java.util.List<org.ws.Vuelos> Aerolinea_getVuelos(){
    public static void main(String[] args) {
        
        List<Vuelos> VuelosTraidos = new ArrayList<Vuelos>();
        List<org.ws.Vuelos> NuevosVuelos = new ArrayList<Vuelos>();
        VuelosTraidos = getVuelos();
        /*
            for (int i = 0; i < VuelosTraidos.size(); i++) {
            System.out.println(VuelosTraidos.get(i).getIdVuelo());
            System.out.println(VuelosTraidos.get(i).getOrigenVuelo());
            System.out.println(VuelosTraidos.get(i).getDestinoVuelo());
            System.out.println(VuelosTraidos.get(i).getCapacidadVuelo());
            System.out.println(VuelosTraidos.get(i).getBoletosComprados());
            System.out.println(VuelosTraidos.get(i).getFechaPartida());
            System.out.println(VuelosTraidos.get(i).getFechaLlegada());
            System.out.println(VuelosTraidos.get(i).getPrecioUnitario());
            } 
    */
        System.out.println(VuelosTraidos.toString());
        System.out.println("Cantidad de vuelos encontrados: " + VuelosTraidos.size());
        System.out.println(Arrays.toString(VuelosTraidos.toArray()));
        for(int i=0;i<VuelosTraidos.size();i++){
        //System.out.println(VuelosTraidos.get(i).getIdVuelo() + " " +  VuelosTraidos.get(i).getOrigenVuelo() + " " +  VuelosTraidos.get(i).getDestinoVuelo());
       /*
        Vuelos vuelo = new Vuelos(VuelosTraidos.get(i).getIdVuelo(), VuelosTraidos.get(i).getOrigenVuelo(), VuelosTraidos.get(i).getDestinoVuelo(),
        VuelosTraidos.get(i).getCapacidadVuelo(), VuelosTraidos.get(i).getBoletosComprados(),  VuelosTraidos.get(i).getFechaPartida(),
        VuelosTraidos.get(i).getFechaLlegada(), VuelosTraidos.get(i).getPrecioUnitario()); */
       
       Vuelos vuelo = new Vuelos();
        vuelo.setIdVuelo((VuelosTraidos.get(i).getIdVuelo()));
        vuelo.setOrigenVuelo(VuelosTraidos.get(i).getOrigenVuelo());
        vuelo.setDestinoVuelo(VuelosTraidos.get(i).getDestinoVuelo());
        vuelo.setCapacidadVuelo(VuelosTraidos.get(i).getCapacidadVuelo());
        vuelo.setBoletosComprados(VuelosTraidos.get(i).getBoletosComprados());
        vuelo.setFechaPartida(VuelosTraidos.get(i).getFechaPartida());
        vuelo.setFechaLlegada(VuelosTraidos.get(i).getFechaLlegada());
        vuelo.setPrecioUnitario(VuelosTraidos.get(i).getPrecioUnitario());
        System.out.println("ID_Vuelo del vuelo temporal creado: " + vuelo.getIdVuelo());
        NuevosVuelos.add(vuelo);
        }
        for (int i = 0; i < NuevosVuelos.size(); i++) {
                System.out.println("Nuevo vuelo importado de webservice de aerolinea: ");
               System.out.println(NuevosVuelos.get(i).getIdVuelo());
               System.out.println(NuevosVuelos.get(i).getOrigenVuelo());
               System.out.println(NuevosVuelos.get(i).getDestinoVuelo());
               System.out.println(NuevosVuelos.get(i).getCapacidadVuelo());
               System.out.println(NuevosVuelos.get(i).getBoletosComprados());
               System.out.println(NuevosVuelos.get(i).getFechaPartida());
               System.out.println(NuevosVuelos.get(i).getFechaLlegada());
               System.out.println(NuevosVuelos.get(i).getPrecioUnitario());
                }
       // return NuevosVuelos;
           
       // System.out.println("La data del usuario = " + usuarioData + "\n"); 
        getVuelos().forEach(System.out::println);
    }
    private static java.util.List<org.ws.Vuelos> getVuelos() {
        org.ws.OperacionesAerolinea_Service service = new org.ws.OperacionesAerolinea_Service();
        org.ws.OperacionesAerolinea port = service.getOperacionesAerolineaPort();
        return port.getVuelos();
    }
    
}
