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
public class DocCheck {
    


    public boolean dlogin(String drname,String drpass)
    {   String tablepass="";
    {   int approved=0;
         try { 
        Statement st=DbConn.getStatement();
        String q="Select password,Approved from doct where name='"+drname+"'";
      
             ResultSet rs=st.executeQuery(q);
             if(rs.next())
             {tablepass=rs.getString(1); 
             approved=rs.getInt(2); }
             
             System.out.println(drname);
             System.out.println(drpass);
             System.out.println(rs.getString(1));
             System.out.println(rs.getInt(2));
             
            
        } 
         catch (Exception e)
        {
            System.out.println(e);
        }
         if(drname!=null && !drname.equals("")&&drpass.equals(tablepass)&&drpass!=null&&!drpass.equals(""))
         {
             System.out.println("form is submitted ");
             
                   if(approved==1)   
                            {
                               return true;
                             }
         
         }
         return false;
    }
    
    }
/*-------------------------------------specialist-----------------------*/
public String spc(String drname)
{
String a="";
    
    try{
        Statement st=DbConn.getStatement();
         String s="Select SPECIALIZATION from doct where NAME='"+drname+"'";
 
        
        
        ResultSet rs1=st.executeQuery(s);
        if(rs1.next())
        {
       a= rs1.getString(1);
        }
       
    } 
    catch(Exception e)
    {
        System.out.println(e);
    }
        return a;
    } 


}


