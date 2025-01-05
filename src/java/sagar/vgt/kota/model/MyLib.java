package sagar.vgt.kota.model;
import java.sql.*;
public class MyLib 
{
    public Connection create_Connection()
    {
        Connection cn=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String path="jdbc:mysql://localhost:3307/sagar";
            String dbuser="root";
            String dbpass="";
            cn=DriverManager.getConnection(path, dbuser, dbpass);
        }
        catch(Exception e)
        {
            System.out.println("Create_connection : "+e);
        }
        return cn;        
    }
}