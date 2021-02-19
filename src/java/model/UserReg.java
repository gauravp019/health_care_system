
package model;
import database.DbConn;
import java.sql.ResultSet;
import java.sql.Statement;



public class UserReg {
    public boolean Regestered(String username,String password,String email,Long pno,int age,String gender,String add)
    {   
        int t=0;
        int i=0;
        try {
            
            Statement st=DbConn.getStatement();
            String que="select max(id)from user ";
            
            /* connectivity max id taken and add 1 to insert new id */

            ResultSet rs=st.executeQuery(que);
            if(rs.next())
            { 
                i=rs.getInt(1);
                System.out.println(i);
                i++;
            }
            
             /* connectivity and add new record to table*/
            String q="Insert into user values('"+i+"','"+username+"','"+password+"','"+email+"','"+age+"','"+gender+"','"+pno+"','"+add+"')";
            t=st.executeUpdate(q);
        } catch (Exception e) 
        {
              System.out.print(e);
        }
        if(t==1)
    {
        System.out.println("Hogya");
        return true;
    }
    return false;    
    }
}
