package cn.nwafulive.webservice.controller;

import cn.nwafulive.webservice.airline.DomesticAirline;
import cn.nwafulive.webservice.airline.DomesticAirlineLocator;
import cn.nwafulive.webservice.airline.DomesticAirlineSoap_PortType;
import cn.nwafulive.webservice.airline.GetDomesticAirlinesTimeResponseGetDomesticAirlinesTimeResult;
import org.apache.axis.message.MessageElement;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.swing.*;
import javax.xml.rpc.ServiceException;
import java.rmi.RemoteException;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/15
 * @Time 18:11.
 */
public class AirlineController {
    public static void queryAirline(String startCity, String lastCity, String theDate, JTextArea resulttextArea) {
        DomesticAirline locator = new DomesticAirlineLocator();
        try {
            DomesticAirlineSoap_PortType service = locator.getDomesticAirlineSoap();
            GetDomesticAirlinesTimeResponseGetDomesticAirlinesTimeResult result;
            result = service.getDomesticAirlinesTime(startCity, lastCity, theDate, "");
            MessageElement elements[] = result.get_any();

            NodeList nodeList = elements[1].getElementsByTagName("AirlinesTime");
            for (int i = 0; i < nodeList.getLength(); i++) {
                Node node = nodeList.item(i);
                NodeList children = node.getChildNodes();
                for (int j = 0; j < children.getLength(); j++) {
//                    System.out.println(children.item(j).getFirstChild());
                    resulttextArea.append(children.item(j).getFirstChild().toString() + "\n");
                }
//                System.out.println();
            }
        } catch (ServiceException | RemoteException e) {
            e.printStackTrace();
        }
    }


}
