package cn.nwafulive.webservice.controller;

import cn.nwafulive.webservice.mobile.MobileCodeWS;
import cn.nwafulive.webservice.mobile.MobileCodeWSLocator;
import cn.nwafulive.webservice.mobile.MobileCodeWSSoap_PortType;

import javax.swing.*;
import javax.xml.rpc.ServiceException;
import java.rmi.RemoteException;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/15
 * @Time 20:27.
 */
public class MobileCodeController {
    public static void mobileQuery(String mobileId, JTextArea resulttextArea) {
        MobileCodeWS locator = new MobileCodeWSLocator();
        try {

            MobileCodeWSSoap_PortType service = locator.getMobileCodeWSSoap();
            String res = service.getMobileCodeInfo(mobileId, "");
            resulttextArea.append(res);

        } catch (ServiceException | RemoteException e) {
            e.printStackTrace();
        }
    }
}
