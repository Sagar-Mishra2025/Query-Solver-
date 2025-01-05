<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="A1.jsp" %>
<h1>Edit and Save Student Details</h1>
<% //scriptlet
    
    //Receive form data
    String name,branch,regno,adyear,contact,email;
    name=request.getParameter("T1"); 
    branch=request.getParameter("T2");
    regno=request.getParameter("T3");
    adyear=request.getParameter("T4");
    contact=request.getParameter("T5");
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
        String s1="update reg set name=?,branch=?,reg_no=?,ad_year=?,contact=? where email=?";


        //Create statements
        PreparedStatement p1=cn.prepareStatement(s1);


        //Replace ? with data
        p1.setString(1, name);
        p1.setString(2, branch);
        p1.setString(3, regno);
        p1.setString(4, adyear);
        p1.setString(5,contact);
        p1.setString(6, email);

        //send data to tables
        int a=p1.executeUpdate();

        String msg="";
        if(a==1)
        {
            msg="Data changes are saved successfully";
        }
        else
        {
            msg="Error : No data saved";
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