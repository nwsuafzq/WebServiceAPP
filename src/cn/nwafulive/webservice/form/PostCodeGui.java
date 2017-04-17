package cn.nwafulive.webservice.form;

import cn.nwafulive.webservice.controller.PostCodeController;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/15
 * @Time 22:08.
 */
public class PostCodeGui {
    private JTextField textField1;

    private JTextArea textArea1;
    public JPanel panel;
    private JButton ckButton;

    public PostCodeGui() {
        textArea1.setEditable(false);
        ckButton.addActionListener(e -> {
            textArea1.setText("");
            PostCodeController.postQuery(textField1.getText(), textArea1);

        });
    }
}
