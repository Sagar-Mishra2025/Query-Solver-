<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="A1.jsp" %>
<style>
    a
    {
  
     text-decoration: none;
     color: gray;
    }
    a:hover
    {
        color: white;
    }
    ::placeholder
    {
        color: #ff6666;
    }
</style>
<div>
    <h1 style="color: #ff9999;">Admin Form Details</h1>
    <hr style="border: 3px solid turquoise;">
    
    <!--Show Admin Copy Past-->
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
    
     if(r1.next())
    {
%>
           <form method="post" action="Admin_Profile1.jsp">
            <h5 style="color: #00cccc;">Name : <input style="margin-left: 54px;" name="T1" type="text" value="<%= r1.getString("admname") %>" placeholder="Enter The Name" /></h5>
            <h5 style="color: #00cccc;">Address : <input style="margin-left: 32px;" name="T2" type="text" value="<%= r1.getString("address") %>"placeholder="Enter The Address" /></h5>
            <h5 style="color: #00cccc;">Contact : <input style="margin-left: 35px;" name="T3" type="text" value="<%= r1.getString("contact") %>" placeholder="Enter The Contact" /></h5>
            <h5 style="color: #00cccc;">Email : <input style="margin-left: 60px;" name="T4" readonly type="text" value="<%= r1.getString("email") %>" placeholder="Enter The Email" /></h5>
            <p>
                <button type="submit" name="B1" class="btn btn-outline-success">Save Changes</button>
            </p>
        </form>
 <%
    }
    else
    {
        %>
        <h3>No data found</h3>
        <%
    }
%>

<button type="button" class="btn btn-outline-secondary"><a href="AdminHome.jsp">B A C K</a></button>
</div>
<%@include file="A2.jsp" %>
