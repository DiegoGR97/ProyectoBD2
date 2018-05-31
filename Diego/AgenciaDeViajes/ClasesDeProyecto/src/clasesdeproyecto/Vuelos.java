
package org.ws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for vuelos complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="vuelos"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="boletos_comprados" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="capacidad_vuelo" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="destino_vuelo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="fecha_llegada" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="fecha_partida" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="id_vuelo" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="origen_vuelo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="precio_unitario" type="{http://www.w3.org/2001/XMLSchema}double"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "vuelos", propOrder = {
    "boletosComprados",
    "capacidadVuelo",
    "destinoVuelo",
    "fechaLlegada",
    "fechaPartida",
    "idVuelo",
    "origenVuelo",
    "precioUnitario"
})
public class Vuelos {

    @XmlElement(name = "boletos_comprados")
    protected int boletosComprados;
    @XmlElement(name = "capacidad_vuelo")
    protected int capacidadVuelo;
    @XmlElement(name = "destino_vuelo")
    protected String destinoVuelo;
    @XmlElement(name = "fecha_llegada")
    protected String fechaLlegada;
    @XmlElement(name = "fecha_partida")
    protected String fechaPartida;
    @XmlElement(name = "id_vuelo")
    protected int idVuelo;
    @XmlElement(name = "origen_vuelo")
    protected String origenVuelo;
    @XmlElement(name = "precio_unitario")
    protected double precioUnitario;

    /**
     * Gets the value of the boletosComprados property.
     * 
     */
    public int getBoletosComprados() {
        return boletosComprados;
    }

    /**
     * Sets the value of the boletosComprados property.
     * 
     */
    public void setBoletosComprados(int value) {
        this.boletosComprados = value;
    }

    /**
     * Gets the value of the capacidadVuelo property.
     * 
     */
    public int getCapacidadVuelo() {
        return capacidadVuelo;
    }

    /**
     * Sets the value of the capacidadVuelo property.
     * 
     */
    public void setCapacidadVuelo(int value) {
        this.capacidadVuelo = value;
    }

    /**
     * Gets the value of the destinoVuelo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDestinoVuelo() {
        return destinoVuelo;
    }

    /**
     * Sets the value of the destinoVuelo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDestinoVuelo(String value) {
        this.destinoVuelo = value;
    }

    /**
     * Gets the value of the fechaLlegada property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFechaLlegada() {
        return fechaLlegada;
    }

    /**
     * Sets the value of the fechaLlegada property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFechaLlegada(String value) {
        this.fechaLlegada = value;
    }

    /**
     * Gets the value of the fechaPartida property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFechaPartida() {
        return fechaPartida;
    }

    /**
     * Sets the value of the fechaPartida property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFechaPartida(String value) {
        this.fechaPartida = value;
    }

    /**
     * Gets the value of the idVuelo property.
     * 
     */
    public int getIdVuelo() {
        return idVuelo;
    }

    /**
     * Sets the value of the idVuelo property.
     * 
     */
    public void setIdVuelo(int value) {
        this.idVuelo = value;
    }

    /**
     * Gets the value of the origenVuelo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getOrigenVuelo() {
        return origenVuelo;
    }

    /**
     * Sets the value of the origenVuelo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setOrigenVuelo(String value) {
        this.origenVuelo = value;
    }

    /**
     * Gets the value of the precioUnitario property.
     * 
     */
    public double getPrecioUnitario() {
        return precioUnitario;
    }

    /**
     * Sets the value of the precioUnitario property.
     * 
     */
    public void setPrecioUnitario(double value) {
        this.precioUnitario = value;
    }

}
