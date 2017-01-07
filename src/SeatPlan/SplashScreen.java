/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SeatPlan;

/**
 *
 * @author urmi
 */
import java.awt.*;
import java.util.*;
import javax.swing.JFrame;

class SplashScreen extends Window
{
        Dimension dim=Toolkit.getDefaultToolkit().getScreenSize();
        Image img;

        SplashScreen()
        {
                super(new Frame());
                Toolkit t= getToolkit();
                img=t.getImage("welcome_884222262.jpg");

                setSize(500,300);
                setLocation(dim.width/2 - getWidth()/2,dim.height/2 - getHeight()/2);
                setVisible(true);
        }
        public void paint (Graphics g)
        {
                g.drawImage(img,0,0,this);
        }
        public static void main(String args[])
        {
                SplashScreen a=new SplashScreen();
                
        }
}
