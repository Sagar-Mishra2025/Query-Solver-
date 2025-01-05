<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@page import="java.sql.*"%>
<body style="background-color: #cccccc;">
    <h1 style="color: #ff3366">Delete Questions</h1>
    <hr style="border: 3px solid turquoise;">
<% //scriptlet
    
    //Receive form data
    String id;
    
    
    id=request.getParameter("T6");
    if(id==null)
    {
        response.sendRedirect("ShowQuestions.jsp");
    }
    else
    {
        Class.forName("com.mysql.jdbc.Driver");
    
        //Create connection between java and mysql server
        MyLib obj=new MyLib();
        Connection cn=obj.create_Connection();

        //create valid sql commands
        String sql="delete from questions where qid=?";
        
        //Create statements
       
        PreparedStatement p1=cn.prepareStatement(sql);
       
        //Replace ? with data
        p1.setString(1, id);
        
    
       
        //send data to tables
        int a=p1.executeUpdate();
        
        
        
        String msg="";
        if(a==1)
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
        <a href="MyQuestions.jsp">Continue</a>
    </h3>
    <%
    }
    %>
</body>