<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="B1.jsp" %>
<style>
    a
    {
     color: #0dcaf0; 
     text-decoration: none;
    }
    a:hover
    {
        color: #fff;
    }
</style>

<h1 style="color: #ff3333;">Delete Questions</h1>
    <hr style="border: 3px solid turquoise;">

<% 
    String em=request.getParameter("H1");
    if(em==null)
    {
        response.sendRedirect("ShowQuestions.jsp");
    }
    else
    {
    
        //load the mysql driver for java
        MyLib obj=new MyLib();
        Connection cn=obj.create_Connection();
         String sql="select * from questions where qid=?";
        PreparedStatement p1=cn.prepareStatement(sql);
        p1.setString(1, em);
        ResultSet r1=p1.executeQuery();
            
   
    if(r1.next())
    {
        String id,sub,question;
         id=r1.getString("qid");
         sub=r1.getString("qsubject");
         question=r1.getString("question");
        %>
        <form onsubmit="return confirm('Do you really want to delete?')" id="form1" method="post" action="DeleteMyQuestion1.jsp">
                <h3 style="color: #00cccc;">id : <%= id %></h3>
                <input value="<%= id %>" type="hidden" name="T6"/>
                <p style="color: #00cccc;"><b>Subject : <%= sub %></b></p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <p style="color: #00cccc;"><b>Question : <%= question %></b></p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <p>
                        <input type="submit" name="B1" id="B1" class="btn btn-outline-danger" title="Click To Delete This Question"value="Delete" />
                </p>
              </form>
             <%
        }
        else
        {
            %>
            <h2>No data found</h2>
            
            <%
        }
        
        %>
        <p>
            <button type="button" class="btn btn-outline-primary" title="Back To My Questions"><a href="MyQuestions.jsp">B A C K</a></button>
        </p>

            <%
    }
 %>
        <%@include file="B2.jsp" %>
    
 