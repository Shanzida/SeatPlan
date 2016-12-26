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

    public class ExcelToDb {

        public ExcelToDb(String csvFile,String Shift){

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
                while ((line = br.readLine()) != null) {
                    if(i>=5){
                        String[] std = line.split(cvsSplitBy);
                        String date="";
                        String batch="";
                        String course_code="";
                        String faculty="";
                        String section ="";
                        String time ="";

                        if(std.length > 0){
                            int id;

                            date=std[0];
                             if(std.length > 1)
                                batch=std[1];
                             if(std.length > 2)
                                course_code=std[2];
                             if(std.length > 4)
                                faculty=std[4];
                             if(std.length > 5)
                                section =std[5];
                             if(std.length > 6)
                                 time =std[6];

                            System.out.println("Date = "+date+" | Batch="+batch+" | course_code ="+course_code+
                                               " | Faculty = "+faculty+" | Sec="+section+" | Time="+time);    
                            String mysql="Select course_id from course_table where course_code= '"+course_code+"'";
                            ResultSet rs= st.executeQuery(mysql);
                            while(rs.next()){
                                  id=rs.getInt(1);
                               }
                           // st.close();
                            String sql="INSERT INTO `exam_info`(`Date`, `Batch`, `course_code`, `Faculty`, `Sec`, `Time`,Shift) VALUES (?, ?, ?, ?, ?, ?,?)";
                            PreparedStatement pstmt=con.prepareStatement(sql);
                            pstmt.setString (1, date);
                            pstmt.setString (2, batch);
                            pstmt.setString (3, course_code);
                            pstmt.setString (4, faculty);
                            pstmt.setString (5, section);
                            pstmt.setString (6, time);
                            pstmt.setString(7,Shift);

                        int a =pstmt.executeUpdate();
                        pstmt.close();


                        }
                     }
                   i++;
                }st.close();
                con.close();

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