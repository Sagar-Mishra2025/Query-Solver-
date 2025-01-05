<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@page import="java.sql.*"%>
<body style="background-color: #cccccc;">
    <h1 style="color: #eb7a1b">Edit Questions</h1>
    <hr style="border: 3px solid turquoise;">
<% //scriptlet
    
    //Receive form data
    String id,subject,question; 
    id=request.getParameter("T1");
    subject=request.getParameter("T2");
    question=request.getParameter("T3");
    if(id==null)
    {
        response.sendRedirect("ShowQuestions.jsp");
    }
    else
    {
        MyLib obj=new MyLib();
        Connection cn=obj.create_Connection();

        //create valid sql commands
        String sql="update questions set qsubject=?,question=? where qid=?";
        
        //Create statements
       
        PreparedStatement p1=cn.prepareStatement(sql);
       
        //Replace ? with data
        p1.setString(3, id);
        p1.setString(1, subject);
        p1.setString(2, question);
        
    
       
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
        <a href="MyQuestions.jsp">Continue</a>
    </h3>
    <%
    }
    %>
</body>
  