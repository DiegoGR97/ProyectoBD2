
package org.ws;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the org.ws package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _GetVuelos_QNAME = new QName("http://ws.org/", "getVuelos");
    private final static QName _GetVuelosResponse_QNAME = new QName("http://ws.org/", "getVuelosResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: org.ws
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetVuelos }
     * 
     */
    public GetVuelos createGetVuelos() {
        return new GetVuelos();
    }

    /**
     * Create an instance of {@link GetVuelosResponse }
     * 
     */
    public GetVuelosResponse createGetVuelosResponse() {
        return new GetVuelosResponse();
    }

    /**
     * Create an instance of {@link Vuelos }
     * 
     */
    public Vuelos createVuelos() {
        return new Vuelos();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetVuelos }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "getVuelos")
    public JAXBElement<GetVuelos> createGetVuelos(GetVuelos value) {
        return new JAXBElement<GetVuelos>(_GetVuelos_QNAME, GetVuelos.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetVuelosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "getVuelosResponse")
    public JAXBElement<GetVuelosResponse> createGetVuelosResponse(GetVuelosResponse value) {
        return new JAXBElement<GetVuelosResponse>(_GetVuelosResponse_QNAME, GetVuelosResponse.class, null, value);
    }

}
