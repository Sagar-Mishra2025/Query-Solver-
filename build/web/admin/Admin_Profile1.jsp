<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="A1.jsp" %>

<h1>Profile</h1>
<%
    //scriplet
    //Receive from Data
    String name,address,contact;
    name=request.getParameter("T1");
    address=request.getParameter("T2");
    contact=request.getParameter("T3");
    
    
    
    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    String s1=("update admindata set admname=?,address=?,contact=? where email=?");
    
    //create Statements
    PreparedStatement p1=cn.prepareStatement(s1);
    
    //Replace ? with data
    p1.setString(1, name);
    p1.setString(2, address);
    p1.setString(3, contact);
    p1.setString(4, e1);
    
    
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
    <h3><a href="AdminHome.jsp">Continue</a></h3>
    <%@include file="A2.jsp" %>

