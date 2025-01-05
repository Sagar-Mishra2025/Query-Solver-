<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="B1.jsp" %>
<style>
    a
    {
     color: blue; 
     text-decoration: none;
    }
    a:hover
    {
        color: #fff;
    }
</style>

<div style="background-color: #000;">
    <h1>Upload Solution</h1>
    <hr style="border: 3px solid turquoise;">
    
<%  //  scriptlet
    String qid=request.getParameter("T2");
    String solution=request.getParameter("T1");
    long dt=System.currentTimeMillis();
    
    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    String sql="insert into solutions values(?,?,?,?,?)";
    PreparedStatement p1=cn.prepareStatement(sql);
    p1.setInt(1, 0);
    p1.setString(2, qid);
    p1.setString(3, solution);
    p1.setLong(4, dt);
    p1.setString(5, e1);
    
    int a=p1.executeUpdate();
    String msg="";
    if(a==1)
    {
        msg="Solution Uploaded";
    }
    else
    {
        msg="Error : Cannot Upload Solution";
    }
    
    %>
        
    <h2>
        <%= msg %>
    </h2>
        <h3>
            <a href="Solve.jsp">BACK</a>
        </h3>
</div>
<%@include file="B2.jsp"%>
