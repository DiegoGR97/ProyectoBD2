/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Diego
 */
public class Usuario_Agencia {
    public int id_usuario;
    public String usuario_agencia;
    public String contra_agencia;
      
    public Usuario_Agencia(int id_usuario, String usuario_agencia, String contra_agencia){
        this.id_usuario = id_usuario;
        this.usuario_agencia = usuario_agencia;
        this.contra_agencia = contra_agencia;
    }
}
/*
        public Vuelos(){
        id_vuelo = 0;
        origen_vuelo = null;
        destino_vuelo = null;
        capacidad_vuelo = 0;
        boletos_comprados = 0;
        fecha_partida = null;
        fecha_llegada = null;
        precio_unitario = 0.00;
    }
public class Vuelos 
{
    private int id_vuelo;
    private String origen_vuelo;
    private String destino_vuelo;
    private int capacidad_vuelo;
    private int boletos_comprados;
    private String fecha_partida;
    private String fecha_llegada; 
    private double precio_unitario;

    public int getId_vuelo() {
        return id_vuelo;
    }

    public void setId_vuelo(int id_vuelo) {
        this.id_vuelo = id_vuelo;
    }

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

    public int getCapacidad_vuelo() {
        return capacidad_vuelo;
    }

    public void setCapacidad_vuelo(int capacidad_vuelo) {
        this.capacidad_vuelo = capacidad_vuelo;
    }

    public int getBoletos_comprados() {
        return boletos_comprados;
    }

    public void setBoletos_comprados(int boletos_comprados) {
        this.boletos_comprados = boletos_comprados;
    }

    public String getFecha_partida() {
        return fecha_partida;
    }

    public void setFecha_partida(String fecha_partida) {
        this.fecha_partida = fecha_partida;
    }

    public String getFecha_llegada() {
        return fecha_llegada;
    }

    public void setFecha_llegada(String fecha_llegada) {
        this.fecha_llegada = fecha_llegada;
    }

    public double getPrecio_unitario() {
        return precio_unitario;
    }

    public void setPrecio_unitario(double precio_unitario) {
        this.precio_unitario = precio_unitario;
    }
    
    public Vuelos(){
        id_vuelo = 0;
        origen_vuelo = null;
        destino_vuelo = null;
        capacidad_vuelo = 0;
        boletos_comprados = 0;
        fecha_partida = null;
        fecha_llegada = null;
        precio_unitario = 0.00;
    }
    
    public Vuelos(int id_vuelo, String origen_vuelo, String destino_vuelo, int capacidad_vuelo, int boletos_comprados, String fecha_partida, String fecha_llegada, double precio_unitario){
        this.id_vuelo = id_vuelo;
        this.origen_vuelo = origen_vuelo;
        this.destino_vuelo = destino_vuelo;
        this.capacidad_vuelo = capacidad_vuelo;
        this.boletos_comprados = boletos_comprados;
        this.fecha_partida = fecha_partida;
        this.fecha_llegada = fecha_llegada;
        this.precio_unitario = precio_unitario;
    }
    
   
}

} */
