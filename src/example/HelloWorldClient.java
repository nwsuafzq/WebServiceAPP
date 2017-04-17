package example;

import cn.nwafulive.webservice.ipaddress.IpAddressSearchWebService;
import cn.nwafulive.webservice.ipaddress.IpAddressSearchWebServiceLocator;
import cn.nwafulive.webservice.ipaddress.IpAddressSearchWebServiceSoap_PortType;
import cn.nwafulive.webservice.mobile.MobileCodeWS;
import cn.nwafulive.webservice.mobile.MobileCodeWSLocator;
import cn.nwafulive.webservice.mobile.MobileCodeWSSoap_PortType;
import cn.nwafulive.webservice.postcode.ChinaZipSearchWebService;
import cn.nwafulive.webservice.postcode.ChinaZipSearchWebServiceLocator;
import cn.nwafulive.webservice.postcode.ChinaZipSearchWebServiceSoap_PortType;
import cn.nwafulive.webservice.postcode.GetAddressByZipCodeResponseGetAddressByZipCodeResult;
import cn.nwafulive.webservice.translate.EnglishChinese;
import cn.nwafulive.webservice.translate.EnglishChineseLocator;
import cn.nwafulive.webservice.translate.EnglishChineseSoap_PortType;
import cn.nwafulive.webservice.translate.TranslatorResponseTranslatorResult;
import org.apache.axis.message.MessageElement;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.rpc.ServiceException;
import java.rmi.RemoteException;
import java.util.Objects;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/13
 * @Time 21:26.
 */
public class HelloWorldClient {
    public static void main(String[] argv) {
        try {
            /*DomesticAirlineLocator locator = new DomesticAirlineLocator();
            DomesticAirlineSoap_PortType service = locator.getDomesticAirlineSoap();
            // If authorization is required
            //((DomesticAirlineSoap12Stub)service).setUsername("user3");
            //((DomesticAirlineSoap12Stub)service).setPassword("pass3");
            // invoke business method
            GetDomesticAirlinesTimeResponseGetDomesticAirlinesTimeResult result;
            result = service.getDomesticAirlinesTime("厦门", "天津", "", "");

            MessageElement elements[] = result.get_any();
//            System.out.println(elements[0]);
            NodeList nodeList = elements[1].getElementsByTagName("AirlinesTime");
            for (int i = 0; i <nodeList.getLength() ; i++) {
                Node node = nodeList.item(i);
                NodeList children = node.getChildNodes();
                for (int j = 0; j < children.getLength() ; j++) {
                    System.out.println(children.item(j).getFirstChild());
                }
                System.out.println();*/
            EnglishChinese locator = new EnglishChineseLocator();
            EnglishChineseSoap_PortType service = locator.getEnglishChineseSoap();
            /*String[] result = service.translatorString("apple");//基本翻译
            for (String results: result) {
                System.out.println(results);
            }*/
            TranslatorResponseTranslatorResult res = service.translator("apple");
            MessageElement elements[] = res.get_any();
//            System.out.println(elements.length);
            NodeList nodeList = elements[1].getElementsByTagName("Dictionary");
            for (int i = 0; i < nodeList.getLength(); i++) {
                Node node = nodeList.item(i);
                NodeList children = node.getChildNodes();   //<Trans> <Sentence> ...
//                Node childNode =children.item(0);


                for (int j = 0; j < children.getLength(); j++) {
//                   System.out.println(children.item(j).getFirstChild());
//                   System.out.println(children.getLength());
                    Node childNode = children.item(j);
                    NodeList children2 = childNode.getChildNodes(); //  <WordKey

                    if (j == 0) {               /* 删除第一个节点里的子节点列表中的<Mp3>这个节点*/
//                       NodeList l= childNode.getChildNodes();
//                       System.out.println(children2.item(4).getFirstChild());
                        Node mp3Node = children2.item(4);
                        mp3Node.removeChild(mp3Node.getFirstChild());
//                        System.out.println(n);
                    }


                    for (int k = 0; k < children2.getLength(); k++) {
//                        System.out.println(children2.getLength());
                        if (!Objects.equals(children2.item(k).getFirstChild(), null)) {
                            System.out.println(children2.item(k).getFirstChild());
                        }
                    }
                }
//                System.out.println();
            }
            //-----
            MobileCodeWS locator1 = new MobileCodeWSLocator();
            MobileCodeWSSoap_PortType service1 = locator1.getMobileCodeWSSoap();
            System.out.println(service1.getMobileCodeInfo("18392085504",""));

            IpAddressSearchWebService locator2 = new IpAddressSearchWebServiceLocator();
            IpAddressSearchWebServiceSoap_PortType service2=locator2.getIpAddressSearchWebServiceSoap();
            String[] ip =service2.getCountryCityByIp("202.117.179.110");
            System.out.println(ip[1]);

        } catch (ServiceException | RemoteException e) {
            e.printStackTrace();
        }
        ChinaZipSearchWebService locator3 = new ChinaZipSearchWebServiceLocator();

        try{
            ChinaZipSearchWebServiceSoap_PortType service = locator3.getChinaZipSearchWebServiceSoap();
            GetAddressByZipCodeResponseGetAddressByZipCodeResult result = service.getAddressByZipCode("712100", "");

			/*取得存放着返回结果的xml文档，用数组存放，数组元素对应着XML根目录下子元素*/
            MessageElement elements[] = result.get_any();
			/*System.out.println(elements[1]);  //可看到XML根目下子元素1对应的xml片段*/

			/*取回所有名为'ZipInfo'的子元素*/
            NodeList list = elements[1].getElementsByTagName("ZipInfo");

			/*遍历名为'ZipInfo'的子元素*/
            for(int i = 0; i < list.getLength(); i++)
            {
                Node node = list.item(i);
                NodeList children = node.getChildNodes();

				/*取出名为'ZipInfo'的子元素下的省、城市、地址、邮编等值*/
                for(int j = 0; j < children.getLength(); j++)
                {
                    System.out.println(children.item(j).getFirstChild());
                }
                System.out.println();
            }

        }catch(Exception e)
        {
            e.printStackTrace();
        }

    }
}

