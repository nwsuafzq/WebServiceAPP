package cn.nwafulive.webservice.form;

import cn.nwafulive.webservice.controller.QqonlineController;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/15
 * @Time 21:41.
 */
public class QqGui {
    public JPanel panel;
    private JTextField textField1;
    private JButton checkButton;
    private JLabel resLabel;

    public QqGui() {
//        resLabel.setText("");
        checkButton.addActionListener(e -> {
            resLabel.setText("");
            String qq=textField1.getText();
            QqonlineController.qqcheck(qq,resLabel);
        });
    }
}
