<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="A1.jsp" %>
<style>
    a
    {
     color: red; 
     text-decoration: none;
    }
    a:hover
    {
        color: #fff;
    }
</style>
<div>
    <h1 style="color: #ff9999;">Admin Home</h1>
       <hr style="border: 3px solid turquoise;">
<div>


<p style="margin-left: 10px;"><button type="button" class="btn btn-outline-danger" title="Add Admin"><a href="AdminReg.jsp">Add Admin</a></button></a></p>
<p style="margin-left: 10px;"><button type="button" class="btn btn-outline-danger" title="Change Password"><a href="Change Password .jsp">Change Password</a></button></a></p>
<p style="margin-left: 10px;"><button type="button" class="btn btn-outline-danger" title="Click To Logout"><a href="../LogOut.jsp">Logout</a></button></a></p>

    

<h1 style="color: #ff6633;">Admin Details</h1>
<% 
    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    String sql="select * from admindata where email=?";
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql) ;
    p1.setString(1, e1);
    
    //fetch data from mysql in ResultSet
    //The ResultSet is a 2D data array
    ResultSet r1=p1.executeQuery();
    
   if(r1.next()) //It will work for every record
    {
      
        String name,address,contact,em;
        name=r1.getString("admname");
        address=r1.getString("address");
        contact=r1.getString("contact");
        em=r1.getString("email");
        %>
        <div style="color: #00cccc;">
        <h3 style="color: #ff0033;"><%= name %></h3>
        <p>
            Address : <%= address %><br/>
            Contact Number :  <%= contact %><br/>
            Email :  <%= em %><br/>
        </p>
        </div>
        
        <a href="Admin_Profile.jsp">
            <button type="button" class="btn btn-outline-warning" title="Click To Change Details">Change</button>
                    
        </a>
        
         <div style="float: right; margin-right: 30px;">
             <img src="../navbar/popper/admig.jpg" width="500px;" height="340px;" style="margin-top:  -393px; border-radius: 15px; border: 3px solid red;"/>
    </div>
        <%
    }
   else
    {
        %>
        <h3>No Data Found</h3>
        <%
    }
%>

</div>  <!--Photo k liya-->
</div>

<%@include file="A2.jsp" %>


 
