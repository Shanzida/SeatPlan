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

    import java.io.BufferedReader;
    import java.io.FileNotFoundException;
    import java.io.FileReader;
    import java.io.IOException;
    import java.sql.Connection;
    import java.sql.PreparedStatement;
    import java.sql.ResultSet;
    import java.sql.SQLException;
    import java.sql.Statement;
    import javax.swing.JOptionPane;

    public class ExcelToDb1 {

        public ExcelToDb1(String csvFile,String semester,String section,String Year,String Course_code){

            //String csvFile = "C:\\Users\\urmi\\Desktop\\std1.csv";
            BufferedReader br = null;
            String line = "";
            String cvsSplitBy = ",";

            try {
               Connection con=DBConnection.connect();
               Statement st=con.createStatement();
              // String msql="Select * from exam_routine";
              //ResultSet rs=st.executeQuery(msql);
                br = new BufferedReader(new FileReader(csvFile));
                int i=0;
                int std_count=0;
                while ((line = br.readLine()) != null) {
                    if(i>=5){
                        String[] std = line.split(cvsSplitBy);
                        String SL_no="";
                        String ID="";
                        String Name="";

                        if(std.length > 0){
                            int id;
                            SL_no=std[0];
                             if(std.length > 1)
                                ID=std[1];
                             if(std.length > 2)
                                Name=std[2];

                            System.out.println("SL_no = "+SL_no+" | ID="+ID+" | Name ="+Name+"| sem="+semester+" | section="+ section+"| year="+Year+"| course="+Course_code);    
                            
                            if(ID == null || ID.equals("")) continue;
                            
                            String sql="INSERT INTO `studentinfo`(`Name`, `ID`,sec,year,semester,course_code) VALUES (?, ?, ?,?,?,?)";
                            PreparedStatement pstmt=con.prepareStatement(sql);
                            pstmt.setString (1, Name);
                            pstmt.setString (2, ID);
                            pstmt.setString (3, section);
                            pstmt.setString (4, Year);
                            pstmt.setString (5, semester);
                            pstmt.setString (6, Course_code);
                            
                            int a =pstmt.executeUpdate();
                            pstmt.close();
                            
                            if(a > 0)
                                std_count=std_count+1;
                        }
                     }
                   i++;
                }
                st.close();
                con.close();
            JOptionPane.showMessageDialog(null, "Saved successfully. Total = "+std_count);

                }
            catch (FileNotFoundException e) {
                e.printStackTrace();
                System.out.println("ppppp");
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("ppppp");

            } finally {
                if (br != null) {
                    try {
                        br.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }

        }

    }