<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="B1.jsp" %></style>
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

    <div>
    <h1 style="color: #ff3333;">Edit Questions</h1>
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
        String id,subject,question,dt;
         id=r1.getString("qid");
         subject=r1.getString("qsubject");
         question=r1.getString("question");
         dt=r1.getString("qdate");
        %>
        <form id="form1" method="post" action="EditMyQuestion1.jsp">
                <h3 style="color: #00cccc;">id : <%= id %></h3>
                <input Readonly value="<%= id %>" type="text" name="T1" id="Txt1"/>
                <p style="color: #00cccc;"><b>Subject : <%= subject %></b></p>
                 <input value="<%= subject %>" type="text" name="T2" id="Txt2"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <p style="color: #00cccc;"><b>Question : <%= question %></b></p>
                    <input value="<%= question %>" type="text" name="T3" id="Txt3"/><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <p>
                        <input type="submit" name="B1" id="B1" class="btn btn-outline-success" title="Save Changes" value="Save Changes" />
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
</div>
            <%
    }
 %>
        <%@include file="B2.jsp" %>
    
 