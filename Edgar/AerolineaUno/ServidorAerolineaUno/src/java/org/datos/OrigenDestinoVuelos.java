/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.datos;

/**
 *
 * @author Edgar Vallejo
 */
public class OrigenDestinoVuelos {
    private String origen_vuelo;
    private String destino_vuelo;

    public String getOrigen_vuelo() {
        return origen_vuelo;
    }

    public void setOrigen_vuelo(String origen_vuelo) {
        this.origen_vuelo = origen_vuelo;
    }

    public String getDestino_vuelo() {
        return destino_vuelo;
    }

    public void setDestino_vuelo(String destino_vuelo) {
        this.destino_vuelo = destino_vuelo;
    }

    public OrigenDestinoVuelos(){
        origen_vuelo = "";
        destino_vuelo = "";
    }
    
    public OrigenDestinoVuelos(String origen_vuelo, String destino_vuelo){
        this.origen_vuelo = origen_vuelo;
        this.destino_vuelo = destino_vuelo;
    }
}
