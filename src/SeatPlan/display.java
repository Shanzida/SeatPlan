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
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.swing.*;
import javax.swing.table.*;
 
 class display extends JFrame
{
   	display(){
            super("Examination Seating Management System");
	Vector columnNames = new Vector();
        Vector data = new Vector();
        ResultSetMetaData md;
        try
        {
            Connection con=DBConnection.connect();
            Statement stmt=con.createStatement();	

            String sql = "Select room_no,course_code,id,row_no,column_no from arrangement";
            
            ResultSet rs = stmt.executeQuery( sql );
            md = rs.getMetaData();
            int column_count = md.getColumnCount();

            for (int i = 1; i <= column_count; i++)
            {
                columnNames.addElement( md.getColumnName(i) );
            }
            while (rs.next())
            {
                Vector row = new Vector(column_count); //jug
                for (int i = 1; i <= column_count; i++)
                {
                    row.addElement( rs.getObject(i) );
                } 
                data.addElement( row );
            }
            rs.close();
            stmt.close();
            con.close();
        }
        catch(Exception e)        {
            System.out.println( e );        
        }
        JTable table = new JTable(data, columnNames); 
        JScrollPane scrollPane = new JScrollPane( table );
        getContentPane().add( scrollPane ); 
        JPanel buttonPanel = new JPanel();
        getContentPane().add( buttonPanel, BorderLayout.SOUTH );
        
        setDefaultCloseOperation( DISPOSE_ON_CLOSE);
        pack();
                setSize(900, 500);
        	setResizable(false);
		Dimension d = Toolkit.getDefaultToolkit().getScreenSize();
		setLocation(d.width/2-getWidth()/2, d.height/2 - getHeight()/2);
                this.setVisible(true);
    }
 
    public static void main(String[] args)
    {
         new display();
        
       
    }
}
