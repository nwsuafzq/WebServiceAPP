/**
 * MobileCodeWSLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package cn.nwafulive.webservice.mobile;

public class MobileCodeWSLocator extends org.apache.axis.client.Service implements cn.nwafulive.webservice.mobile.MobileCodeWS {

/**
 * <a href="http://www.webxml.com.cn/" target="_blank">WebXml.com.cn</a>
 * <strong>国内手机号码归属地查询WEB服务</strong>，提供最新的国内手机号码段归属地数据，每月更新。<br />使用本站
 * WEB 服务请注明或链接本站：<a href="http://www.webxml.com.cn/" target="_blank">http://www.webxml.com.cn/</a>
 * 感谢大家的支持！<br />&nbsp;
 */

    public MobileCodeWSLocator() {
    }


    public MobileCodeWSLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public MobileCodeWSLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for MobileCodeWSSoap
    private java.lang.String MobileCodeWSSoap_address = "http://ws.webxml.com.cn/WebServices/MobileCodeWS.asmx";

    public java.lang.String getMobileCodeWSSoapAddress() {
        return MobileCodeWSSoap_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String MobileCodeWSSoapWSDDServiceName = "MobileCodeWSSoap";

    public java.lang.String getMobileCodeWSSoapWSDDServiceName() {
        return MobileCodeWSSoapWSDDServiceName;
    }

    public void setMobileCodeWSSoapWSDDServiceName(java.lang.String name) {
        MobileCodeWSSoapWSDDServiceName = name;
    }

    public cn.nwafulive.webservice.mobile.MobileCodeWSSoap_PortType getMobileCodeWSSoap() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(MobileCodeWSSoap_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getMobileCodeWSSoap(endpoint);
    }

    public cn.nwafulive.webservice.mobile.MobileCodeWSSoap_PortType getMobileCodeWSSoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            cn.nwafulive.webservice.mobile.MobileCodeWSSoap_BindingStub _stub = new cn.nwafulive.webservice.mobile.MobileCodeWSSoap_BindingStub(portAddress, this);
            _stub.setPortName(getMobileCodeWSSoapWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setMobileCodeWSSoapEndpointAddress(java.lang.String address) {
        MobileCodeWSSoap_address = address;
    }


    // Use to get a proxy class for MobileCodeWSSoap12
    private java.lang.String MobileCodeWSSoap12_address = "http://ws.webxml.com.cn/WebServices/MobileCodeWS.asmx";

    public java.lang.String getMobileCodeWSSoap12Address() {
        return MobileCodeWSSoap12_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String MobileCodeWSSoap12WSDDServiceName = "MobileCodeWSSoap12";

    public java.lang.String getMobileCodeWSSoap12WSDDServiceName() {
        return MobileCodeWSSoap12WSDDServiceName;
    }

    public void setMobileCodeWSSoap12WSDDServiceName(java.lang.String name) {
        MobileCodeWSSoap12WSDDServiceName = name;
    }

    public cn.nwafulive.webservice.mobile.MobileCodeWSSoap_PortType getMobileCodeWSSoap12() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(MobileCodeWSSoap12_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getMobileCodeWSSoap12(endpoint);
    }

    public cn.nwafulive.webservice.mobile.MobileCodeWSSoap_PortType getMobileCodeWSSoap12(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            cn.nwafulive.webservice.mobile.MobileCodeWSSoap12Stub _stub = new cn.nwafulive.webservice.mobile.MobileCodeWSSoap12Stub(portAddress, this);
            _stub.setPortName(getMobileCodeWSSoap12WSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setMobileCodeWSSoap12EndpointAddress(java.lang.String address) {
        MobileCodeWSSoap12_address = address;
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
            if (cn.nwafulive.webservice.mobile.MobileCodeWSSoap_PortType.class.isAssignableFrom(serviceEndpointInterface)) {
                cn.nwafulive.webservice.mobile.MobileCodeWSSoap_BindingStub _stub = new cn.nwafulive.webservice.mobile.MobileCodeWSSoap_BindingStub(new java.net.URL(MobileCodeWSSoap_address), this);
                _stub.setPortName(getMobileCodeWSSoapWSDDServiceName());
                return _stub;
            }
            if (cn.nwafulive.webservice.mobile.MobileCodeWSSoap_PortType.class.isAssignableFrom(serviceEndpointInterface)) {
                cn.nwafulive.webservice.mobile.MobileCodeWSSoap12Stub _stub = new cn.nwafulive.webservice.mobile.MobileCodeWSSoap12Stub(new java.net.URL(MobileCodeWSSoap12_address), this);
                _stub.setPortName(getMobileCodeWSSoap12WSDDServiceName());
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
        if ("MobileCodeWSSoap".equals(inputPortName)) {
            return getMobileCodeWSSoap();
        }
        else if ("MobileCodeWSSoap12".equals(inputPortName)) {
            return getMobileCodeWSSoap12();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://WebXml.com.cn/", "MobileCodeWS");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://WebXml.com.cn/", "MobileCodeWSSoap"));
            ports.add(new javax.xml.namespace.QName("http://WebXml.com.cn/", "MobileCodeWSSoap12"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("MobileCodeWSSoap".equals(portName)) {
            setMobileCodeWSSoapEndpointAddress(address);
        }
        else 
if ("MobileCodeWSSoap12".equals(portName)) {
            setMobileCodeWSSoap12EndpointAddress(address);
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
