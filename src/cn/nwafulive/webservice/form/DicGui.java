package cn.nwafulive.webservice.form;

import cn.nwafulive.webservice.controller.TransController;


import javax.swing.*;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/14
 * @Time 16:42.
 */
public class DicGui {
    private JTextArea inputWordsTextArea;
    private JTextArea ckresulttextArea;
    public JPanel paneldic;
    private JButton baiduwebButton;
    private JButton transButton;


    public DicGui() {
        ckresulttextArea.setEditable(false);
        transButton.addActionListener(e -> {
            ckresulttextArea.setText("");

            String inputText = inputWordsTextArea.getText();

            TransController.trans(inputText,ckresulttextArea);

        });
        baiduwebButton.addActionListener(e -> {
            try {
                //创建一个URI实例
                java.net.URI uri = java.net.URI.create("http://fanyi.baidu.com/");
                //获取当前系统桌面扩展
                java.awt.Desktop dp = java.awt.Desktop.getDesktop();
                //判断系统桌面是否支持要执行的功能
                if(dp.isSupported(java.awt.Desktop.Action.BROWSE)){
                    //获取系统默认浏览器打开链接
                    dp.browse(uri);
                }
            } catch (java.io.IOException e1) {
                //此为无法获取系统默认浏览器
            }
        });


    }

}
