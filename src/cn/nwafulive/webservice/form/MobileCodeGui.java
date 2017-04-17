package cn.nwafulive.webservice.form;

import cn.nwafulive.webservice.controller.MobileCodeController;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/15
 * @Time 20:31.
 */
public class MobileCodeGui {
    public JPanel panel;
    private JTextField mobileIdtextField;
    private JTextArea restextArea;
    private JButton queryButton;

    public MobileCodeGui() {
        restextArea.setEditable(false);
        queryButton.addActionListener(e -> {
            restextArea.setText("");
            String mid = mobileIdtextField.getText();
            MobileCodeController.mobileQuery(mid,restextArea);

        });
    }
}
