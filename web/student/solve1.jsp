<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="B1.jsp" %>
<style>
    a
    {
     color: #00cccc; 
     text-decoration: none;
    }
    a:hover
    {
        color: #fff;
    }
    .v
    {
        color: #009933;
        text-decoration: none;
    }
    .v:hover
    {
        color:springgreen;
    }
</style>

<div style="background-color: #000;">
    <h1 style="color: #ff3333;">Upload Solution</h1>
    <hr style="border: 3px solid turquoise;">
    
<%  //  scriptlet
    String qid=request.getParameter("H1");
    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    String sql="select * from questions where qid=?";
    PreparedStatement p1=cn.prepareStatement(sql);
    p1.setString(1, qid);
    ResultSet r1=p1.executeQuery();
    

    if(r1.next())
    {
        String question,sub,dt;
         question=r1.getString("question");
         sub=r1.getString("qsubject");
         dt=r1.getString("qdate");
        %>
        <h3 style="color: #00cccc;">Q. <%= question %></h3>
        subject : <%= sub %>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Date : <%= dt %>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Uploaded By : <%= r1.getString("qby") %>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <form method="post" action="solve2.jsp">
            <h3 style="color: #eb359b;">Solution</h3>
            <textarea name="T1" rows="5" cols="100"></textarea>
            <input type="hidden" name="T2" value="<%= qid %>" />
            <p><br>
                <button type="submit" class="btn btn-outline-success" title="Upload The Solution">Upload</button>
            </p>
            
        </form>
    <%
    }
        else
        {
         %>
         <h3>No Question Found</h3>
         <%
        }
        
        sql="Select * from solutions where qid=?";
        p1=cn.prepareStatement(sql);
        p1.setString(1, qid);
        r1=p1.executeQuery();
        int i=1;
        while(r1.next())
        {
            String solution=r1.getString("solution");
            String solby=r1.getString("sol_by");
            String dt=r1.getString("sol_date");
        
   %> 
   <p  style="color: #eb359b">
   <textarea  name="T4" rows="5" cols="100">
        Solution<%= i %>. <%= solution %></textarea>
        Date : <%= dt %>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Solved By : <%= solby %>
   </p>
   <%
   }
        %>
        <h2>More About This Help With<a class="v" href="https://chatgpt.com/"><b style="color: " title="Solve The Question Help of ChatGPT">&nbsp;<u>ChatGPT</u></b></a></h2>
        <p>
            <button type="button" class="btn btn-outline-primary" title="Back To Questions"><a href="Solve.jsp">B A C K</a></button>
        </p>
</div>
<%@include file="B2.jsp"%>