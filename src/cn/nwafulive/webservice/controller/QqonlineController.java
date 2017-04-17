package cn.nwafulive.webservice.controller;

import cn.nwafulive.webservice.qqonline.QqOnlineWebService;
import cn.nwafulive.webservice.qqonline.QqOnlineWebServiceLocator;
import cn.nwafulive.webservice.qqonline.QqOnlineWebServiceSoap_PortType;

import javax.swing.*;
import javax.xml.rpc.ServiceException;
import java.rmi.RemoteException;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/15
 * @Time 21:37.
 */
public class QqonlineController {
    public static void qqcheck(String qq, JLabel label) {
        QqOnlineWebService locator = new QqOnlineWebServiceLocator();
        try {
            QqOnlineWebServiceSoap_PortType service = locator.getqqOnlineWebServiceSoap();

            String res = service.qqCheckOnline(qq);
            if (res.equals("Y")) {
                label.setText("在线");
            } else if (res.equals("N")) {
                label.setText("不在线");
            } else {
                label.setText("QQ号有误");
            }

        } catch (ServiceException | RemoteException e) {
            e.printStackTrace();
        }
    }
}
