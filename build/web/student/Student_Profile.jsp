<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="B1.jsp" %>
<style>
    a
    {
     color: #0dcaf0; 
     text-decoration: none;
    }
    a:hover
    {
        color: #fff;
    }
</style>
<div>
    <h1 style="color: #ff3333;">Student Form Details</h1>
    <hr style="border: 3px solid turquoise;">

 <!--Show Student Copy Past-->
<%  //  scriptlet
    
    //load the mysql driver for java
    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    String sql="select * from reg where email=?";
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql) ;
    p1.setString(1,e1);
    
    //fetch data from mysql in ResultSet
    //The ResultSet is a 2D data array
    ResultSet r1=p1.executeQuery();
     
     if(r1.next())
    {
%>
        <form method="post" action="Student_Profile1.jsp">
            <h5 style="color: #00cccc;">Name : <input style="margin-left: 35px;" name="T1" type="text" value="<%= r1.getString("name") %>" /></h5>
            <h5 style="color: #00cccc;">Branch : <input style="margin-left: 25px;" name="T2" type="text" value="<%= r1.getString("branch") %>" /></h5>
            <h5 style="color: #00cccc;">Reg_no : <input style="margin-left: 20px;" name="T3" type="text" value="<%= r1.getString("reg_no") %>" /></h5>
            <h5 style="color: #00cccc;">Ad_year : <input style="margin-left: 13px;" name="T4"  type="text" value="<%= r1.getString("ad_year") %>" /></h5>
            <h5 style="color: #00cccc;">Contact : <input style="margin-left: 15px;" name="T5"  type="text" value="<%= r1.getString("contact") %>" /></h5>
            <h5 style="color: #00cccc;">Email : <input style="margin-left: 40px;" name="T6" readonly type="text" value="<%= r1.getString("email") %>" /></h5>
             <p>
                <button type="submit" name="B1" class="btn btn-outline-success" title="Apply The Changes">Save Changes</button>
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
        <p>
        <button type="button" class="btn btn-outline-primary" title="Back To Home"><a href="StudentHome.jsp">B A C K</a></button>
        </p>

</div>
<%@include file="B2.jsp" %>


