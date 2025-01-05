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

<div>
    <h1 style="color: #ff3333;">Upload Solution</h1>
    <hr style="border: 3px solid turquoise;">
<%  //  scriptlet

    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    String sql="Select * from questions where qby<>?";
    PreparedStatement p1=cn.prepareStatement(sql);
    p1.setString(1, e1);
    ResultSet r1=p1.executeQuery();
    
    int i=1;
    while(r1.next())
    {
        String question,sub,dt;
         question=r1.getString("question");
         sub=r1.getString("qsubject");
         dt=r1.getString("qdate");
        %>
        
        <h3 style="color: #00cccc;">Q<%= i %>. <%= question %></h3>
        <p style="color: #ff6666;">
        Subject : <%= sub %>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Date : <%= dt %>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Uploaded By : <%= r1.getString("qby") %>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        
        <form method="post" action="solve1.jsp">
            <input type="hidden" name="H1" value="<%= r1.getString("qid") %>" />
            <button type="submit" class="btn btn-outline-warning" title="Solve This Question">Solve</button>
        </form>
            
    <%
        i++;
    }
 
   %> 
   <button type="button" class="btn btn-outline-primary" title="Back To Home"><a href="StudentHome.jsp">B A C K</a></button>

<%@include file="B2.jsp"%>