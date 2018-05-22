/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.datos;

/**
 *
 * @author e-emi
 */
public class Viajes {
    private int id_viaje;
    private String origen_viaje;
    private String destino_viaje;
    private double precio_total;

    public int getId_viaje() {
        return id_viaje;
    }

    public void setId_viaje(int id_viaje) {
        this.id_viaje = id_viaje;
    }
    
    public String getOrigen_viaje() {
        return origen_viaje;
    }

    public void setOrigen_viaje(String origen_viaje) {
        this.origen_viaje = origen_viaje;
    }

    public String getDestino_viaje() {
        return destino_viaje;
    }

    public void setDestino_viaje(String destino_viaje) {
        this.destino_viaje = destino_viaje;
    }

    public double getPrecio_total() {
        return precio_total;
    }

    public void setPrecio_total(double precio_total) {
        this.precio_total = precio_total;
    }
    
    public Viajes(){
        id_viaje = 0;
        origen_viaje = "";
        destino_viaje = "";
        precio_total = 0.0;
    }
    
    public Viajes(int id_viaje, String origen_viaje, String destino_viaje, double precio_total){
        this.id_viaje = id_viaje;
        this.origen_viaje = origen_viaje;
        this.destino_viaje = destino_viaje;
        this.precio_total = precio_total;
    }
    
    
}
