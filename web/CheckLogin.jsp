<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="C1.jsp" %>
<%
    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    String email,pass;
   email=request.getParameter("txt1");
    pass=request.getParameter("txt2");
    
    String sql="select * from login where email=? AND password=?";
    PreparedStatement p1=cn.prepareStatement(sql);
    p1.setString(1, email);
    p1.setString(2, pass);
    ResultSet r1=p1.executeQuery();
    if(r1.next())
    {
        //fetch usertype 
        String ut=r1.getString("usertype");
        //create session
        session=request.getSession(true);
        session.setAttribute("email", email);
        session.setAttribute("usertype", ut);
        //send to page
        if(ut.equalsIgnoreCase("Admin"))
        {
            response.sendRedirect("admin/AdminHome.jsp");
        }
        else if(ut.equalsIgnoreCase("Student"))
        {
            response.sendRedirect("student/StudentHome.jsp");
        }
    }
    else
    {
        response.sendRedirect("LoginError.jsp");
    }
%>
<%@include file="C2.jsp" %>