
package org.ws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for nuevoCliente complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="nuevoCliente"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="nombre_cliente" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="apellido_cliente" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="email_cliente" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="nacionalidad" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "nuevoCliente", propOrder = {
    "nombreCliente",
    "apellidoCliente",
    "emailCliente",
    "nacionalidad"
})
public class NuevoCliente {

    @XmlElement(name = "nombre_cliente")
    protected String nombreCliente;
    @XmlElement(name = "apellido_cliente")
    protected String apellidoCliente;
    @XmlElement(name = "email_cliente")
    protected String emailCliente;
    protected String nacionalidad;

    /**
     * Gets the value of the nombreCliente property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNombreCliente() {
        return nombreCliente;
    }

    /**
     * Sets the value of the nombreCliente property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNombreCliente(String value) {
        this.nombreCliente = value;
    }

    /**
     * Gets the value of the apellidoCliente property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getApellidoCliente() {
        return apellidoCliente;
    }

    /**
     * Sets the value of the apellidoCliente property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setApellidoCliente(String value) {
        this.apellidoCliente = value;
    }

    /**
     * Gets the value of the emailCliente property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getEmailCliente() {
        return emailCliente;
    }

    /**
     * Sets the value of the emailCliente property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEmailCliente(String value) {
        this.emailCliente = value;
    }

    /**
     * Gets the value of the nacionalidad property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNacionalidad() {
        return nacionalidad;
    }

    /**
     * Sets the value of the nacionalidad property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNacionalidad(String value) {
        this.nacionalidad = value;
    }

}
