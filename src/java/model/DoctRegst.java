/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import database.DbConn;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Asus
 */
public class DoctRegst{
    public boolean DocRegester(String username,String password,String email,Long pno,String quali,int age,String wrk,String spc,String gender,String add)
    { 
        int t=0;
        int app=0;
        try {
            
            Statement st=DbConn.getStatement();
            String q="Insert into doct values('"+username+"','"+password+"','"+email+"','"+pno+"','"+quali+"','"+age+"','"+wrk+"','"+spc+"','"+gender+"','"+add+"','"+app+"')";
            t=st.executeUpdate(q);
        } catch (Exception e) 
        {
              System.out.print(e);
        }
        if(t==1)
    {
       
        return true;
    }
    return false;    
    }
}

