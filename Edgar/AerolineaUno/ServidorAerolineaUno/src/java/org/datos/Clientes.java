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
public class Clientes{
    private int id_cliente;

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getNombre_cliente() {
        return nombre_cliente;
    }

    public void setNombre_cliente(String nombre_cliente) {
        this.nombre_cliente = nombre_cliente;
    }

    public String getApellido_cliente() {
        return apellido_cliente;
    }

    public void setApellido_cliente(String apellido_cliente) {
        this.apellido_cliente = apellido_cliente;
    }

    public String getEmail_cliente() {
        return email_cliente;
    }

    public void setEmail_cliente(String email_cliente) {
        this.email_cliente = email_cliente;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }
    private String nombre_cliente;
    private String apellido_cliente;
    private String email_cliente;
    private String nacionalidad;
    
    public Clientes(){
        id_cliente = 0;
        nombre_cliente = "";
        apellido_cliente = "";
        email_cliente = "";
        nacionalidad = "";
    }
    
    public Clientes(int id_cliente, String nombre_cliente, String apellido_cliente, String email_cliente, String nacionalidad){
        this.id_cliente = id_cliente;
        this.nombre_cliente = nombre_cliente;
        this.apellido_cliente = apellido_cliente;
        this.email_cliente = email_cliente;
        this.nacionalidad = nacionalidad;
    }
}
