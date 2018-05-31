
package org.ws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for cancelarBoleto complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="cancelarBoleto"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="id_boleto" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "cancelarBoleto", propOrder = {
    "idBoleto"
})
public class CancelarBoleto {

    @XmlElement(name = "id_boleto")
    protected int idBoleto;

    /**
     * Gets the value of the idBoleto property.
     * 
     */
    public int getIdBoleto() {
        return idBoleto;
    }

    /**
     * Sets the value of the idBoleto property.
     * 
     */
    public void setIdBoleto(int value) {
        this.idBoleto = value;
    }

}
