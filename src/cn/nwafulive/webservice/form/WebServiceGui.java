package cn.nwafulive.webservice.form;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 * @Author ZhangQiong nwsuafzq@hotmail.com
 * @Date 2017/4/13
 * @Time 21:54.
 */
public class WebServiceGui {
    private JPanel panel;
    private JButton btnDic;
    private JButton mobileCodeButton;
    private JButton airlineQueryButton;
    private JButton ipAddressButton;
    private JButton qqButton;
    private JButton postcodeButton;

    public WebServiceGui() {

        btnDic.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JFrame dicFrame = new JFrame("词典");

                dicFrame.setBounds(300, 300, 410, 400);
                dicFrame.setContentPane(new DicGui().paneldic);
                //frame.pack();
                //dicFrame.setSize(300,300);
                dicFrame.setVisible(true);

            }
        });
        airlineQueryButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JFrame airFrame = new JFrame("航班查询");

                airFrame.setContentPane(new AirlineGui().panel);
                //frame.pack();
                airFrame.setSize(500, 500);
                airFrame.setVisible(true);
            }
        });
        mobileCodeButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JFrame mobileFrame = new JFrame("手机号码归属地查询");
                mobileFrame.setContentPane(new MobileCodeGui().panel);
                //frame.pack();
                mobileFrame.setSize(350, 350);
                mobileFrame.setVisible(true);
            }
        });
        ipAddressButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JFrame ipFrame = new JFrame("IP地址查询");
                ipFrame.setContentPane(new IpGui().panel);
                //frame.pack();
                ipFrame.setSize(400, 150);
                ipFrame.setVisible(true);
            }
        });
        qqButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JFrame qqFrame = new JFrame("QQ在线状态查询");
                qqFrame.setContentPane(new QqGui().panel);
                qqFrame.pack();
                //ipFrame.setSize(400,150);
                qqFrame.setVisible(true);
            }
        });
        postcodeButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JFrame postFrame = new JFrame("邮编地址查询");
                postFrame.setContentPane(new PostCodeGui().panel);
                //postFrame.pack();
                postFrame.setSize(400, 400);
                postFrame.setVisible(true);
            }
        });
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame("万能APP");
        frame.setContentPane(new WebServiceGui().panel);
        frame.setBounds(300, 300, 400, 280);
        //frame.setSize(300,300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        //frame.pack();
        frame.setVisible(true);
    }


}
