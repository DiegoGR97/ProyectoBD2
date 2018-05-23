
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

    private final static QName _GetCertainVuelos_QNAME = new QName("http://ws.org/", "getCertainVuelos");
    private final static QName _GetCertainVuelosResponse_QNAME = new QName("http://ws.org/", "getCertainVuelosResponse");
    private final static QName _GetClientes_QNAME = new QName("http://ws.org/", "getClientes");
    private final static QName _GetClientesResponse_QNAME = new QName("http://ws.org/", "getClientesResponse");
    private final static QName _GetVuelos_QNAME = new QName("http://ws.org/", "getVuelos");
    private final static QName _GetVuelosResponse_QNAME = new QName("http://ws.org/", "getVuelosResponse");
    private final static QName _NuevoCliente_QNAME = new QName("http://ws.org/", "nuevoCliente");
    private final static QName _NuevoClienteResponse_QNAME = new QName("http://ws.org/", "nuevoClienteResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: org.ws
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetCertainVuelos }
     * 
     */
    public GetCertainVuelos createGetCertainVuelos() {
        return new GetCertainVuelos();
    }

    /**
     * Create an instance of {@link GetCertainVuelosResponse }
     * 
     */
    public GetCertainVuelosResponse createGetCertainVuelosResponse() {
        return new GetCertainVuelosResponse();
    }

    /**
     * Create an instance of {@link GetClientes }
     * 
     */
    public GetClientes createGetClientes() {
        return new GetClientes();
    }

    /**
     * Create an instance of {@link GetClientesResponse }
     * 
     */
    public GetClientesResponse createGetClientesResponse() {
        return new GetClientesResponse();
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
     * Create an instance of {@link NuevoCliente }
     * 
     */
    public NuevoCliente createNuevoCliente() {
        return new NuevoCliente();
    }

    /**
     * Create an instance of {@link NuevoClienteResponse }
     * 
     */
    public NuevoClienteResponse createNuevoClienteResponse() {
        return new NuevoClienteResponse();
    }

    /**
     * Create an instance of {@link Clientes }
     * 
     */
    public Clientes createClientes() {
        return new Clientes();
    }

    /**
     * Create an instance of {@link Vuelos }
     * 
     */
    public Vuelos createVuelos() {
        return new Vuelos();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetCertainVuelos }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "getCertainVuelos")
    public JAXBElement<GetCertainVuelos> createGetCertainVuelos(GetCertainVuelos value) {
        return new JAXBElement<GetCertainVuelos>(_GetCertainVuelos_QNAME, GetCertainVuelos.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetCertainVuelosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "getCertainVuelosResponse")
    public JAXBElement<GetCertainVuelosResponse> createGetCertainVuelosResponse(GetCertainVuelosResponse value) {
        return new JAXBElement<GetCertainVuelosResponse>(_GetCertainVuelosResponse_QNAME, GetCertainVuelosResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetClientes }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "getClientes")
    public JAXBElement<GetClientes> createGetClientes(GetClientes value) {
        return new JAXBElement<GetClientes>(_GetClientes_QNAME, GetClientes.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetClientesResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "getClientesResponse")
    public JAXBElement<GetClientesResponse> createGetClientesResponse(GetClientesResponse value) {
        return new JAXBElement<GetClientesResponse>(_GetClientesResponse_QNAME, GetClientesResponse.class, null, value);
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

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link NuevoCliente }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "nuevoCliente")
    public JAXBElement<NuevoCliente> createNuevoCliente(NuevoCliente value) {
        return new JAXBElement<NuevoCliente>(_NuevoCliente_QNAME, NuevoCliente.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link NuevoClienteResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "nuevoClienteResponse")
    public JAXBElement<NuevoClienteResponse> createNuevoClienteResponse(NuevoClienteResponse value) {
        return new JAXBElement<NuevoClienteResponse>(_NuevoClienteResponse_QNAME, NuevoClienteResponse.class, null, value);
    }

}
