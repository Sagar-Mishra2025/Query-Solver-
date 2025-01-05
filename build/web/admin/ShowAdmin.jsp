<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="A1.jsp" %>
<div>
    <h1 style="color: #ff9999;">Admin Form Details</h1>
       <hr style="border: 3px solid turquoise;">
    
<%  //  scriptlet
    
  //load the mysql driver for java
    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    String sql="select * from admindata";
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql) ;
    
    //fetch data from mysql in ResultSet
    //The ResultSet is a 2D data array
    ResultSet r1=p1.executeQuery();
    
    int count=0;
    //show data 
    while(r1.next()) //It will work for every record
    {
        count++;
        String name,address,contact,em;
        name=r1.getString("admname");
        address=r1.getString("address");
        contact=r1.getString("contact");
        em=r1.getString("email");
        %>
        <h3><%= name %></h3>
        <p>
            Address : <%= address %><br/>
            Contact Number :  <%= contact %><br/>
            Email :  <%= em %><br/>
        </p>
        
        
        <%
    }
%>

<h2>Total number of records : <%= count %></h2>
</div>
    
<%@include file="A2.jsp" %>