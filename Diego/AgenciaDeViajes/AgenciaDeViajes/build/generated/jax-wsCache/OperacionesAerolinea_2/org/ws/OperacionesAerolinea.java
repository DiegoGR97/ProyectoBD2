
package org.ws;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.11-b150120.1832
 * Generated source version: 2.2
 * 
 */
@WebService(name = "OperacionesAerolinea", targetNamespace = "http://ws.org/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface OperacionesAerolinea {


    /**
     * 
     * @param origen
     * @param destino
     * @return
     *     returns java.util.List<org.ws.Vuelos>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getCertainVuelos", targetNamespace = "http://ws.org/", className = "org.ws.GetCertainVuelos")
    @ResponseWrapper(localName = "getCertainVuelosResponse", targetNamespace = "http://ws.org/", className = "org.ws.GetCertainVuelosResponse")
    @Action(input = "http://ws.org/OperacionesAerolinea/getCertainVuelosRequest", output = "http://ws.org/OperacionesAerolinea/getCertainVuelosResponse")
    public List<Vuelos> getCertainVuelos(
        @WebParam(name = "origen", targetNamespace = "")
        String origen,
        @WebParam(name = "destino", targetNamespace = "")
        String destino);

    /**
     * 
     * @return
     *     returns java.util.List<org.ws.Vuelos>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getVuelos", targetNamespace = "http://ws.org/", className = "org.ws.GetVuelos")
    @ResponseWrapper(localName = "getVuelosResponse", targetNamespace = "http://ws.org/", className = "org.ws.GetVuelosResponse")
    @Action(input = "http://ws.org/OperacionesAerolinea/getVuelosRequest", output = "http://ws.org/OperacionesAerolinea/getVuelosResponse")
    public List<Vuelos> getVuelos();

    /**
     * 
     * @return
     *     returns java.util.List<org.ws.Clientes>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getClientes", targetNamespace = "http://ws.org/", className = "org.ws.GetClientes")
    @ResponseWrapper(localName = "getClientesResponse", targetNamespace = "http://ws.org/", className = "org.ws.GetClientesResponse")
    @Action(input = "http://ws.org/OperacionesAerolinea/getClientesRequest", output = "http://ws.org/OperacionesAerolinea/getClientesResponse")
    public List<Clientes> getClientes();

}
