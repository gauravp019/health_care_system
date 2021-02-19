
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DbConn {

 static Connection con=null;
 static Statement st=null;

 static
 {
     try
     {
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/askdoc", "root","root");
         st=con.createStatement();
         
     }
     catch(Exception e)
     {
         System.out.print(e);
     }
 }
 public static Connection getconnection()
 {
     return con;
 }
 public static Statement getStatement()
 {
     return st;
 }
}


