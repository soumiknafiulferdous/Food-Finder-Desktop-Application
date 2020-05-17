/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package foodfinder;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.util.ArrayList;
import javax.swing.JOptionPane;


public class MyDatabaseHandler {
    Connection connect = null;
    
    public void connectDatabase(){
        try{
//            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection("jdbc:mysql://localhost/foodfinder","root","");
            System.out.println("Successfully Connected to Mysql");

        }catch(Exception e){
            System.out.println("Not Connected..");
            e.printStackTrace();
        }
    }
    public int insertData(String firstname,String lastname,String username,String email,String password){
        try{
            String query1="SELECT * from user where Username='"+username+"'";
            PreparedStatement p=connect.prepareStatement(query1);
            ResultSet rs=p.executeQuery();
            if(rs.next()){
               RegistrationFrom r=new RegistrationFrom();
               JOptionPane.showMessageDialog(r,"Username is already in use."); 
               return 0;
            }
            else{
                String query = "INSERT INTO user(Firstname,Lastname,Username,Email,Password) values(?,?,?,?,?)";
                PreparedStatement pStatement = connect.prepareStatement(query);
                pStatement.setString(1,firstname);
                pStatement.setString(2,lastname);
                pStatement.setString(3,username);
                pStatement.setString(4,email);
                pStatement.setString(5,password);
                pStatement.executeUpdate();
                RegistrationFrom r=new RegistrationFrom();
                JOptionPane.showMessageDialog(r,"Successful Registration.");
                System.out.println("Successfully Inserted..");
                return 1;
            }            
            
        }catch(Exception e){
            System.out.println("Error in inserting");
            e.printStackTrace();
        }
        return 0;
    }
    public int insertData1(String username,String password){
        try{
            String query = "SELECT * from user where Username='"+username+"' AND Password='"+password+"'";
            PreparedStatement pStatement = connect.prepareStatement(query);
            ResultSet rs=pStatement.executeQuery();
            if(rs.next()){
                return 1;
            }
            else{
               LoginForm lf=new LoginForm();
               JOptionPane.showMessageDialog(lf,"Username or Password is incorrect"); 
               return 0;
            }
        }catch(Exception e){
            System.out.println("Error in inserting");
            e.printStackTrace();
        }
        return 0;
    }
     public String insertData3(String username,String password){
        String str="";
        try{
           // System.out.println("INSER DATA #");
            String query = "SELECT * from user where Username='"+username+"' AND Password='"+password+"'";
            PreparedStatement pStatement = connect.prepareStatement(query);
            ResultSet rs=pStatement.executeQuery();
            if(rs.next()){
                str+=rs.getString("Firstname");
                str+=" ";
                str+=rs.getString("Lastname");
            }
        }catch(Exception e){
            System.out.println("Error in inserting");
            e.printStackTrace();
        }
        return str;
    }
    public ArrayList<product> BindTable(String str,String str1,int p1){
        ArrayList<product> list=new ArrayList<product>();
        try{
           System.out.println("P1 :"+p1);
           if(p1==1){
            product p;
            String query="Select * from restaurant where cuisine='"+str1+"'";
            PreparedStatement pStatement=connect.prepareStatement(query);
            ResultSet rs=pStatement.executeQuery();
            while(rs.next()){
                p=new product(
                      rs.getString("name"),
                      rs.getString("location"),
                      rs.getString("cuisine"),
                      rs.getString("rating")
                  );
                list.add(p);
            }
          }
           else if(p1==2){
            product p;
            String query="Select * from restaurant where location='"+str+"'";
            PreparedStatement pStatement=connect.prepareStatement(query);
            ResultSet rs=pStatement.executeQuery();
            while(rs.next()){
                p=new product(
                      rs.getString("name"),
                      rs.getString("location"),
                      rs.getString("cuisine"),
                      rs.getString("rating")
                  );
                list.add(p);
            }
          } 
          else if(p1==3){
            product p;
            String query="Select * from restaurant where location='"+str+"' and cuisine='"+str1+"'";
            PreparedStatement pStatement=connect.prepareStatement(query);
            ResultSet rs=pStatement.executeQuery();
            while(rs.next()){
                p=new product(
                      rs.getString("name"),
                      rs.getString("location"),
                      rs.getString("cuisine"),
                      rs.getString("rating")
                  );
                list.add(p);
            }
          }
        }
        catch(Exception e){
           System.out.println("Arraylist"); 
        }
        return list;
    }

}
