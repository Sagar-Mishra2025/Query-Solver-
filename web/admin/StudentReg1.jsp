<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="A1.jsp" %>

<h1>Student Registration</h1>
<% //scriptlet
    
    //Receive form data
    String name,branch,regno,adyear,contact,email,pass,cpass;
    name=request.getParameter("T1"); 
    branch=request.getParameter("T2");
    regno=request.getParameter("T3");
    adyear=request.getParameter("T4");
    contact=request.getParameter("T5");
    email=request.getParameter("T6");
    pass=request.getParameter("T7");
    cpass=request.getParameter("T8");
    
    String usertype="student";
    
    //load the mysql driver for java
    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    
    //create valid sql commands
    String s1="insert into reg values(?,?,?,?,?,?)";
    String s2="insert into login values(?,?,?)";
    
    //Create statements
    PreparedStatement p1=cn.prepareStatement(s1);
    PreparedStatement p2=cn.prepareStatement(s2);
    
    //Replace ? with data
    p1.setString(1, name);
    p1.setString(2, branch);
    p1.setString(3, regno);
    p1.setString(4, adyear);
    p1.setString(5, contact);
    p1.setString(6, email);
    
    p2.setString(1, email);
    p2.setString(2, pass);
    p2.setString(3, usertype);
    
    //send data to tables
    int a=p1.executeUpdate();
    int b=p2.executeUpdate();
    
    String msg="";
    if(a==1 && b==1)
    {
        msg="Data saved and login created";
    }
    else if(a==1)
    {
        msg="Only data is saved";
    }
    else if(b==2)
    {
        msg="Only login is created";
    }
    else
    {
        msg="No data saved and no login created";
    }
    
%>

<h2>
    <%= msg %>
</h2>
<h3>
    <a href="StudentReg.jsp">Register More</a>
</h3>

<%@include file="A2.jsp" %>