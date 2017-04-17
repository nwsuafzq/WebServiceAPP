package cn.nwafulive.webservice.controller;

import cn.nwafulive.webservice.postcode.ChinaZipSearchWebService;
import cn.nwafulive.webservice.postcode.ChinaZipSearchWebServiceLocator;
import cn.nwafulive.webservice.postcode.ChinaZipSearchWebServiceSoap_PortType;
import cn.nwafulive.webservice.postcode.GetAddressByZipCodeResponseGetAddressByZipCodeResult;
import org.apache.axis.message.MessageElement;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.swing.*;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/15
 * @Time 22:06.
 */
public class PostCodeController {
    public static void postQuery(String code, JTextArea area) {
        ChinaZipSearchWebService locator = new ChinaZipSearchWebServiceLocator();

        try {
            ChinaZipSearchWebServiceSoap_PortType service = locator.getChinaZipSearchWebServiceSoap();
            GetAddressByZipCodeResponseGetAddressByZipCodeResult result = service.getAddressByZipCode(code, "");

			/*取得存放着返回结果的xml文档，用数组存放，数组元素对应着XML根目录下子元素*/
            MessageElement elements[] = result.get_any();
            /*System.out.println(elements[1]);  //可看到XML根目下子元素1对应的xml片段*/

			/*取回所有名为'ZipInfo'的子元素*/
            NodeList list = elements[1].getElementsByTagName("ZipInfo");

			/*遍历名为'ZipInfo'的子元素*/
            for (int i = 0; i < list.getLength(); i++) {
                Node node = list.item(i);
                NodeList children = node.getChildNodes();

				/*取出名为'ZipInfo'的子元素下的省、城市、地址、邮编等值*/
                for (int j = 0; j < children.getLength(); j++) {
//                    System.out.println(children.item(j).getFirstChild());
                    area.append(children.item(j).getFirstChild().toString() + "\n");
                }
//                System.out.println();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
