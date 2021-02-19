
package model;
import database.DbConn;
import java.sql.ResultSet;
import java.sql.Statement;


public class UserCheck {
    public boolean login(String username,String password)
    {   String tablepass="";
         try { 
        Statement st=DbConn.getStatement();
        String q="Select password from user where name='"+username+"'";
      
             ResultSet rs=st.executeQuery(q);
             if(rs.next())
             {tablepass=rs.getString(1); }
            
        } catch (Exception e)
        {
            System.out.println(e);
        }
         if(username!=null&&!username.equals("")&&password.equals(tablepass)&&password!=null&&!password.equals(""))
         {return true;}
         return false;
    }
}
