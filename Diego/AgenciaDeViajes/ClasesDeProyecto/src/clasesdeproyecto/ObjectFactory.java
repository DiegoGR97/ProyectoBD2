
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

    private final static QName _CancelarBoleto_QNAME = new QName("http://ws.org/", "cancelarBoleto");
    private final static QName _CancelarBoletoResponse_QNAME = new QName("http://ws.org/", "cancelarBoletoResponse");
    private final static QName _ComprarBoletoAgenciaUno_QNAME = new QName("http://ws.org/", "comprarBoletoAgenciaUno");
    private final static QName _ComprarBoletoAgenciaUnoResponse_QNAME = new QName("http://ws.org/", "comprarBoletoAgenciaUnoResponse");
    private final static QName _GetCertainVuelos_QNAME = new QName("http://ws.org/", "getCertainVuelos");
    private final static QName _GetCertainVuelosResponse_QNAME = new QName("http://ws.org/", "getCertainVuelosResponse");
    private final static QName _GetClientes_QNAME = new QName("http://ws.org/", "getClientes");
    private final static QName _GetClientesResponse_QNAME = new QName("http://ws.org/", "getClientesResponse");
    private final static QName _GetOrigenDestino_QNAME = new QName("http://ws.org/", "getOrigenDestino");
    private final static QName _GetOrigenDestinoResponse_QNAME = new QName("http://ws.org/", "getOrigenDestinoResponse");
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
     * Create an instance of {@link CancelarBoleto }
     * 
     */
    public CancelarBoleto createCancelarBoleto() {
        return new CancelarBoleto();
    }

    /**
     * Create an instance of {@link CancelarBoletoResponse }
     * 
     */
    public CancelarBoletoResponse createCancelarBoletoResponse() {
        return new CancelarBoletoResponse();
    }

    /**
     * Create an instance of {@link ComprarBoletoAgenciaUno }
     * 
     */
    public ComprarBoletoAgenciaUno createComprarBoletoAgenciaUno() {
        return new ComprarBoletoAgenciaUno();
    }

    /**
     * Create an instance of {@link ComprarBoletoAgenciaUnoResponse }
     * 
     */
    public ComprarBoletoAgenciaUnoResponse createComprarBoletoAgenciaUnoResponse() {
        return new ComprarBoletoAgenciaUnoResponse();
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
     * Create an instance of {@link GetOrigenDestino }
     * 
     */
    public GetOrigenDestino createGetOrigenDestino() {
        return new GetOrigenDestino();
    }

    /**
     * Create an instance of {@link GetOrigenDestinoResponse }
     * 
     */
    public GetOrigenDestinoResponse createGetOrigenDestinoResponse() {
        return new GetOrigenDestinoResponse();
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
     * Create an instance of {@link OrigenDestinoVuelos }
     * 
     */
    public OrigenDestinoVuelos createOrigenDestinoVuelos() {
        return new OrigenDestinoVuelos();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CancelarBoleto }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "cancelarBoleto")
    public JAXBElement<CancelarBoleto> createCancelarBoleto(CancelarBoleto value) {
        return new JAXBElement<CancelarBoleto>(_CancelarBoleto_QNAME, CancelarBoleto.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CancelarBoletoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "cancelarBoletoResponse")
    public JAXBElement<CancelarBoletoResponse> createCancelarBoletoResponse(CancelarBoletoResponse value) {
        return new JAXBElement<CancelarBoletoResponse>(_CancelarBoletoResponse_QNAME, CancelarBoletoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ComprarBoletoAgenciaUno }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "comprarBoletoAgenciaUno")
    public JAXBElement<ComprarBoletoAgenciaUno> createComprarBoletoAgenciaUno(ComprarBoletoAgenciaUno value) {
        return new JAXBElement<ComprarBoletoAgenciaUno>(_ComprarBoletoAgenciaUno_QNAME, ComprarBoletoAgenciaUno.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ComprarBoletoAgenciaUnoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "comprarBoletoAgenciaUnoResponse")
    public JAXBElement<ComprarBoletoAgenciaUnoResponse> createComprarBoletoAgenciaUnoResponse(ComprarBoletoAgenciaUnoResponse value) {
        return new JAXBElement<ComprarBoletoAgenciaUnoResponse>(_ComprarBoletoAgenciaUnoResponse_QNAME, ComprarBoletoAgenciaUnoResponse.class, null, value);
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
     * Create an instance of {@link JAXBElement }{@code <}{@link GetOrigenDestino }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "getOrigenDestino")
    public JAXBElement<GetOrigenDestino> createGetOrigenDestino(GetOrigenDestino value) {
        return new JAXBElement<GetOrigenDestino>(_GetOrigenDestino_QNAME, GetOrigenDestino.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetOrigenDestinoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.org/", name = "getOrigenDestinoResponse")
    public JAXBElement<GetOrigenDestinoResponse> createGetOrigenDestinoResponse(GetOrigenDestinoResponse value) {
        return new JAXBElement<GetOrigenDestinoResponse>(_GetOrigenDestinoResponse_QNAME, GetOrigenDestinoResponse.class, null, value);
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
