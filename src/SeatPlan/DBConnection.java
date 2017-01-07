/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SeatPlan;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author urmi
 */
public class DBConnection {
    
    public static void main(String args[]){
                 System.out.println("hi static main");

        connect();
    }
    
    public static Connection connect (){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/seatplan","root","");  
            System.out.println("Connected");
        }
        catch(Exception e){
            e.printStackTrace();
            System.out.println("Not Connected");
            con=null;
        }
        
        return con;
        
    }
    
}
