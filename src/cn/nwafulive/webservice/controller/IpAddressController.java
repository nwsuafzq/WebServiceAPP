package cn.nwafulive.webservice.controller;

import cn.nwafulive.webservice.ipaddress.IpAddressSearchWebService;
import cn.nwafulive.webservice.ipaddress.IpAddressSearchWebServiceLocator;
import cn.nwafulive.webservice.ipaddress.IpAddressSearchWebServiceSoap_PortType;

import javax.swing.*;
import javax.xml.rpc.ServiceException;
import java.rmi.RemoteException;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/15
 * @Time 21:14.
 */
public class IpAddressController {
    public static void ipQuery(String ip, JTextArea area) {
        IpAddressSearchWebService locator = new IpAddressSearchWebServiceLocator();
        IpAddressSearchWebServiceSoap_PortType service = null;
        try {
            service = locator.getIpAddressSearchWebServiceSoap();
            String[] ipres = service.getCountryCityByIp(ip);
            area.setText(ipres[1]);
        } catch (ServiceException | RemoteException e) {
            e.printStackTrace();
        }


    }
}
