<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="A1.jsp" %>
<h1>Delete Student Details</h1>
<% //scriptlet
    
    //Receive form data
    String email;
    
    email=request.getParameter("T6");
    if(email==null)
    {
        response.sendRedirect("ShowStudents.jsp");
    }
    else
    {
        MyLib obj=new MyLib();
        Connection cn=obj.create_Connection();

        //create valid sql commands
        String s1="delete from reg where email=?";
        String s2="delete from login where email=?";

        //Create statements
        PreparedStatement p1=cn.prepareStatement(s1);
        PreparedStatement p2=cn.prepareStatement(s2);

        //Replace ? with data
        
        p1.setString(1, email);
        p2.setString(1, email);
        //send data to tables
        int a=p1.executeUpdate();
        int b=p2.executeUpdate();

        String msg="";
        if(a==1 && b==1)
        {
            msg="Data deleted successfully";
        }
        else
        {
            msg="Error : No data deleted";
        }

    %>

    <h2>
        <%= msg %>
    </h2>
    <h3>
        <a href="ShowStudents.jsp">Continue</a>
    </h3>
    <%
    }
    %>
    <%@include file="A2.jsp" %>