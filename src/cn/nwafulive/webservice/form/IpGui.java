package cn.nwafulive.webservice.form;

import cn.nwafulive.webservice.controller.IpAddressController;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/15
 * @Time 21:16.
 */
public class IpGui {
    public JPanel panel;
    private JTextField iptextField;
    private JButton queryButton;
    private JTextArea textArea;

    public IpGui() {
        textArea.setEditable(false);
        queryButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                textArea.setText("");
                String ip= iptextField.getText();
                IpAddressController.ipQuery(ip,textArea);
            }
        });
    }
}
