
package javaconnectdb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPasswordField;
import javax.swing.JTextField;



public class JavaConnectDB {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    

String switchnum;  
        Scanner switchnumline = new Scanner(System.in);  
        System.out.println("Enter: Road Test(Scheduling a Road Test), Driving Lesson(Scheduling a Driving Lesson),"
                + "Find Percentage(Find the percentage of fail score of a specific school), Find List(Finds the list of student assoicated with a instructor)");
        switchnum = switchnumline.nextLine();  
        String again = "yes";
       
        while(again != "no"){
           
        switch (switchnum){
            case "Road Test":
                   
              //  insertRoadTest(dbCon);
                break;
               
            case "Driving Lesson":
                //insertDrivingLesson(dbCon);
                break;
            case "Find Percentage":
            //    SelectPercentageFail(dbCon);
                break;
            case "Find List":
              //  SelectNotYetPassed(dbCon);
                break;
            }
            Scanner againline = new Scanner(System.in);
                System.out.println("Again? y/n");
                again = againline.nextLine();
        }
        }
    
}