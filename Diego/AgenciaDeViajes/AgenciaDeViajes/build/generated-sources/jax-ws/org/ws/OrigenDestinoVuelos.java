
package org.ws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for origenDestinoVuelos complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="origenDestinoVuelos"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="destino_vuelo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="origen_vuelo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "origenDestinoVuelos", propOrder = {
    "destinoVuelo",
    "origenVuelo"
})
public class OrigenDestinoVuelos {

    @XmlElement(name = "destino_vuelo")
    protected String destinoVuelo;
    @XmlElement(name = "origen_vuelo")
    protected String origenVuelo;

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

}
