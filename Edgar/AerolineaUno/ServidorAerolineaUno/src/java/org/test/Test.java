/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.test;

import org.db.VuelosDao;

/**
 *
 * @author e-emi
 */
public class Test {
    public static void main(String[] args) {
        VuelosDao vuelosDao = new VuelosDao();
        //System.out.println(vuelosDao.getVuelos());
        String y = "miFecha";
        String origen_vuelo = "Guate";
        String destino_vuelo = "Costa";
        int capacidad_vuelo = 45;
        String x = "to_date(\'"+y+"\', 'dd-mm-yyyy hh24:mi:ss')";
        int precio_unitario = 45;
        String prueba = "EXEC crear_vuelo('"+origen_vuelo+"', '"+destino_vuelo+"', "+capacidad_vuelo+", "+x+", "+x+", "+precio_unitario;
        
        System.out.println(prueba);
    }
}
