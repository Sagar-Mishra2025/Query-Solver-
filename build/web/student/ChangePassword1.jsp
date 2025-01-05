<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="B1.jsp" %>

<h1>Change Password</h1>
<%
    String msg="";
    String oldpass,newpass,confirm;
    oldpass=request.getParameter("T1");
    newpass=request.getParameter("T2");
    confirm=request.getParameter("T3");
    if(newpass.equals(confirm)==false)
    {
        msg="Error : Check new and confirm password";
    }
    else
    {
        MyLib obj=new MyLib();
        Connection cn=obj.create_Connection();
        String sql="update login set password=? where email=? AND password=?";
        PreparedStatement p1=cn.prepareStatement(sql);
        p1.setString(1, newpass);
        p1.setString(2, e1);
        p1.setString(3,oldpass);
        int a=p1.executeUpdate();
        if(a==1)
        {
            msg="Password is changed successfully";
        }
        else
        {
            msg="Error : Incorrect old password";
        }
    }
%>

<h2>
    <%= msg %>
</h2>

<h3>
    <a href="StudentHome.jsp ">Continue</a>
</h3>
<%@include file="B2.jsp" %>