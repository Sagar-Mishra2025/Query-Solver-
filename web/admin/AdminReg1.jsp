<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="A1.jsp" %>
<h1>Admin Registration</h1>
<%
    //scriplet
    //Receive from Data
    String name,address,contact,email,password,cpass;
    name=request.getParameter("T1");
    address=request.getParameter("T2");
    contact=request.getParameter("T3");
    email=request.getParameter("T4");
    password=request.getParameter("T5");
    cpass=request.getParameter("T6");
    
    String usertype="Admin";
    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    
    String s1=("insert into admindata values(?,?,?,?)");
    String s2=("insert into login values(?,?,?)");
    //create Statements
    PreparedStatement p1=cn.prepareStatement(s1);
    PreparedStatement p2=cn.prepareStatement(s2);
    //Replace ? with data
    p1.setString(1, name);
    p1.setString(2, address);
    p1.setString(3, contact);
    p1.setString(4, email);
    
    p2.setString(1,email );
    p2.setString(2,password);
    p2.setString(3,usertype);
    
    int a=p1.executeUpdate();
    int b=p2.executeUpdate();
    String msg="";
    if(a==1 &&b==1)
    {
        msg="Data saved and login successfully";
    }
    else if(a==1)
    {
       
        msg="Data Saved";
    }
    else if(b==2)
    {
        
        msg="Login successfully";
    }
    else
    {
        msg="Neither data saved nor login succesfully happened";
    }
    %>
    <h2><%=msg%></h2>
    <h3><a href="AdminReg.jsp">Continue</a></h3>
<%@include file="A2.jsp" %>