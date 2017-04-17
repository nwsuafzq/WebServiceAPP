package cn.nwafulive.webservice.form;

import cn.nwafulive.webservice.controller.AirlineController;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/15
 * @Time 18:10.
 */
public class AirlineGui {
    public JPanel panel;
    private JTextArea resulttextArea;
    private JButton queryButton;
    private JTextField starttextField;
    private JTextField lasttextField;
    private JTextField datetextField;

    public AirlineGui() {
        resulttextArea.setEditable(false);
        queryButton.addActionListener(e -> {
            resulttextArea.setText("");
            String startCity= starttextField.getText();
            String lastCity = lasttextField.getText();
            String date=datetextField.getText();
            AirlineController.queryAirline(startCity,lastCity,date,resulttextArea);

        });
    }
}
