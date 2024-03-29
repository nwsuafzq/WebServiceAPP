/**
 * QqOnlineWebServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package cn.nwafulive.webservice.qqonline;

public class QqOnlineWebServiceLocator extends org.apache.axis.client.Service implements cn.nwafulive.webservice.qqonline.QqOnlineWebService {

/**
 * <a href="http://www.webxml.com.cn/" target="_blank">WebXml.com.cn</a>
 * <strong>腾讯QQ在线状态 WEB 服务</strong>。<a href="http://www.webxml.com.cn/"
 * target="_blank">WebXml.com.cn</a> 和/或其各供应商不为本页面提供信息的错误、残缺、延迟或因依靠此信息所采取的任何行动负责。</br>此腾讯QQ在线状态Web
 * Services请不要用于任何商业目的，若有需要请<a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx"
 * target="_blank">联系我们</a>，欢迎技术交流。 QQ：8409035<br /><strong>使用本站 WEB
 * 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持</strong>！<br /><br />&nbsp;
 */

    public QqOnlineWebServiceLocator() {
    }


    public QqOnlineWebServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public QqOnlineWebServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for qqOnlineWebServiceSoap12
    private java.lang.String qqOnlineWebServiceSoap12_address = "http://ws.webxml.com.cn/webservices/qqOnlineWebService.asmx";

    public java.lang.String getqqOnlineWebServiceSoap12Address() {
        return qqOnlineWebServiceSoap12_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String qqOnlineWebServiceSoap12WSDDServiceName = "qqOnlineWebServiceSoap12";

    public java.lang.String getqqOnlineWebServiceSoap12WSDDServiceName() {
        return qqOnlineWebServiceSoap12WSDDServiceName;
    }

    public void setqqOnlineWebServiceSoap12WSDDServiceName(java.lang.String name) {
        qqOnlineWebServiceSoap12WSDDServiceName = name;
    }

    public cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap_PortType getqqOnlineWebServiceSoap12() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(qqOnlineWebServiceSoap12_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getqqOnlineWebServiceSoap12(endpoint);
    }

    public cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap_PortType getqqOnlineWebServiceSoap12(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap12Stub _stub = new cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap12Stub(portAddress, this);
            _stub.setPortName(getqqOnlineWebServiceSoap12WSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setqqOnlineWebServiceSoap12EndpointAddress(java.lang.String address) {
        qqOnlineWebServiceSoap12_address = address;
    }


    // Use to get a proxy class for qqOnlineWebServiceSoap
    private java.lang.String qqOnlineWebServiceSoap_address = "http://ws.webxml.com.cn/webservices/qqOnlineWebService.asmx";

    public java.lang.String getqqOnlineWebServiceSoapAddress() {
        return qqOnlineWebServiceSoap_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String qqOnlineWebServiceSoapWSDDServiceName = "qqOnlineWebServiceSoap";

    public java.lang.String getqqOnlineWebServiceSoapWSDDServiceName() {
        return qqOnlineWebServiceSoapWSDDServiceName;
    }

    public void setqqOnlineWebServiceSoapWSDDServiceName(java.lang.String name) {
        qqOnlineWebServiceSoapWSDDServiceName = name;
    }

    public cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap_PortType getqqOnlineWebServiceSoap() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(qqOnlineWebServiceSoap_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getqqOnlineWebServiceSoap(endpoint);
    }

    public cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap_PortType getqqOnlineWebServiceSoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap_BindingStub _stub = new cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap_BindingStub(portAddress, this);
            _stub.setPortName(getqqOnlineWebServiceSoapWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setqqOnlineWebServiceSoapEndpointAddress(java.lang.String address) {
        qqOnlineWebServiceSoap_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     * This service has multiple ports for a given interface;
     * the proxy implementation returned may be indeterminate.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap_PortType.class.isAssignableFrom(serviceEndpointInterface)) {
                cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap12Stub _stub = new cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap12Stub(new java.net.URL(qqOnlineWebServiceSoap12_address), this);
                _stub.setPortName(getqqOnlineWebServiceSoap12WSDDServiceName());
                return _stub;
            }
            if (cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap_PortType.class.isAssignableFrom(serviceEndpointInterface)) {
                cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap_BindingStub _stub = new cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap_BindingStub(new java.net.URL(qqOnlineWebServiceSoap_address), this);
                _stub.setPortName(getqqOnlineWebServiceSoapWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("qqOnlineWebServiceSoap12".equals(inputPortName)) {
            return getqqOnlineWebServiceSoap12();
        }
        else if ("qqOnlineWebServiceSoap".equals(inputPortName)) {
            return getqqOnlineWebServiceSoap();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://WebXml.com.cn/", "qqOnlineWebService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://WebXml.com.cn/", "qqOnlineWebServiceSoap12"));
            ports.add(new javax.xml.namespace.QName("http://WebXml.com.cn/", "qqOnlineWebServiceSoap"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("qqOnlineWebServiceSoap12".equals(portName)) {
            setqqOnlineWebServiceSoap12EndpointAddress(address);
        }
        else 
if ("qqOnlineWebServiceSoap".equals(portName)) {
            setqqOnlineWebServiceSoapEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
