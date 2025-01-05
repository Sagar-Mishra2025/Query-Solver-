<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="B1.jsp" %>
<style>
    a
    {
     color: blue; 
     text-decoration: none;
    }
    a:hover
    {
        color: #fff;
    }
</style>

<div>
    <h1 style="color: #ff3333;">Student Home</h1>
       <hr style="border: 3px solid turquoise;">
  
    <p style="margin-left: 10px;"><button type="button" class="btn btn-outline-primary" title="Upload Query"><a href="Ask.jsp">Upload Query</a></button></p>

    <p style="margin-left: 10px;"><button type="button" class="btn btn-outline-primary" title="My Questions"><a href="MyQuestions.jsp">My Questions</a></button></p>

    <p style="margin-left: 10px;"><button type="button" class="btn btn-outline-primary" title="Solved Solutions"><a href="Solve.jsp">Solved Solutions</a></button></p>
    
    <p style="margin-left: 10px;"><button type="button" class="btn btn-outline-primary" title="Change Password"><a href="Change Password .jsp">Change Password</a></button></p>

    <p style="margin-left: 10px;"><button type="button" class="btn btn-outline-primary" title="Click To Logout"><a href="../LogOut.jsp">Logout</a></button></p>
    

    <h1 style="color: #ff00cc;">Student Details</h1>
<%  //  scriptlet

  //load the mysql driver for java
    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    String sql="select * from reg where email=?";
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql) ;
    p1.setString(1, e1);
    
    //fetch data from mysql in ResultSet
    //The ResultSet is a 2D data array
    ResultSet r1=p1.executeQuery();
    
   if(r1.next()) //It will work for every record
    {
      String name,branch,reg_no,admission_year,contact,em;
       name=r1.getString("name");
        branch=r1.getString("branch");
        reg_no=r1.getString("reg_no");
        admission_year=r1.getString("ad_year");
        contact=r1.getString("contact");
        em=r1.getString("email");
        %>
        <div style="color: #00cccc;">
            <h3 style="color: #ffcc33;"><%= name %></h3>
            <p>
            Branch : <%= branch %><br/>
            Reg_No. :  <%= reg_no %><br/>
             Admission Year :  <%= admission_year %><br/>
              Contact Number :  <%= contact %><br/>
            Email :  <%= em %><br/>
            </p>
        </div>
        
        <a href="Student_Profile.jsp">
            <button class="b btn btn-outline-warning" title="Click To Change Details"> Change</button>            
        </a>
            
            <div style="float: right">
            <img src="../navbar/popper/cap.jpg" width="500px;" height="412px" style="margin-top:  -550; margin-right:10px;  border-radius: 15px; border: 3px solid #ff3333;">
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
</div>


<%@include file="B2.jsp" %>


    



    


 
