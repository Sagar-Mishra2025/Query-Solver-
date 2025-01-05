<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="B1.jsp" %>

    <div>
    <h1>Student Profile</h1>
    <hr style="border: 3px solid turquoise;">

 
<%
    //scriplet
    //Receive from Data
    String name,Branch,Reg_no,Ad_year,Contact;
    name=request.getParameter("T1");
    Branch=request.getParameter("T2");
    Reg_no=request.getParameter("T3");
    Ad_year=request.getParameter("T4");
    Contact=request.getParameter("T5");

    
    
    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    String s1=("update reg set name=?,branch=?,reg_no=?,ad_year=?,contact=? where email=?");
    
    //create Statements
    PreparedStatement p1=cn.prepareStatement(s1);
    
    //Replace ? with data
    p1.setString(1, name);
    p1.setString(2, Branch);
    p1.setString(3, Reg_no);
    p1.setString(4, Ad_year);
    p1.setString(5, Contact);
    p1.setString(6, e1);
    
    
    int a=p1.executeUpdate();
    
    String msg="";
    if(a==1)
    {
        msg="Data changes are saved successfully";
    }
    
    else
    {
        msg="Cannot save changes";
    }
    %>
    <h2><%=msg%></h2>
    <p><a href="StudentHome.jsp"><b>B A C K</b></a></p> 
    
    <%@include file="B2.jsp" %>