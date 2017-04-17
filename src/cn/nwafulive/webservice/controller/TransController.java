package cn.nwafulive.webservice.controller;

import cn.nwafulive.webservice.translate.EnglishChinese;
import cn.nwafulive.webservice.translate.EnglishChineseLocator;
import cn.nwafulive.webservice.translate.EnglishChineseSoap_PortType;
import cn.nwafulive.webservice.translate.TranslatorResponseTranslatorResult;
import org.apache.axis.message.MessageElement;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.swing.*;
import javax.xml.rpc.ServiceException;
import java.rmi.RemoteException;
import java.util.Objects;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/15
 * @Time 17:45.
 */
public class TransController {

    public static void trans(String word, JTextArea ckresulttextArea) {
        try {
            EnglishChinese locator = new EnglishChineseLocator();
            EnglishChineseSoap_PortType service = locator.getEnglishChineseSoap();

            TranslatorResponseTranslatorResult res = service.translator(word);
            MessageElement elements[] = res.get_any();

            NodeList nodeList = elements[1].getElementsByTagName("Dictionary");
            for (int i = 0; i < nodeList.getLength(); i++) {
                Node node = nodeList.item(i);
                NodeList children = node.getChildNodes();   //<Trans> <Sentence> ...

                for (int j = 0; j < children.getLength(); j++) {
                    Node childNode = children.item(j);
                    NodeList children2 = childNode.getChildNodes(); //  <WordKey>等
                    if (j == 0) {               /* 删除第一个节点里的子节点列表中的<Mp3>这个节点*/
                        Node mp3Node = children2.item(4);
                        mp3Node.removeChild(mp3Node.getFirstChild());
                    }
                    for (int k = 0; k < children2.getLength(); k++) {

                        if (!Objects.equals(children2.item(k).getFirstChild(), null)) {
//                            System.out.println(children2.item(k).getFirstChild());
                            String transRes = children2.item(k).getFirstChild().toString();
                            ckresulttextArea.append(transRes + "\n");
                        }
                    }
                }
            }

        } catch (ServiceException | RemoteException e) {
            e.printStackTrace();
        }
    }
}


