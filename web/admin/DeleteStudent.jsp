<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="A1.jsp" %>
<style>
    a
    {
  
     text-decoration: none;
     color: gray;
    }
    a:hover
    {
        color: white;
    }
   
</style>

<div>
    <h1>Delete Student Details</h1>
    <hr style="border: 3px solid turquoise;">

<% 
    String em=request.getParameter("H1");
    if(em==null)
    {
        response.sendRedirect("ShowStudents.jsp");
    }
    else
    {
    
        //load the mysql driver for java
        MyLib obj=new MyLib();
        Connection cn=obj.create_Connection();
        String sql="select * from reg where email=?";
        //create statement
        PreparedStatement p1=cn.prepareStatement(sql) ;
        p1.setString(1, em);
        
        ResultSet r1=p1.executeQuery();

        if(r1.next()) 
        {
            String name,branch,roll,adyear,mobile;
            name=r1.getString("name");
            branch=r1.getString("branch");
            roll=r1.getString("reg_no");
            adyear=r1.getString("ad_year");
            mobile=r1.getString("contact");
            
 %>
            <form onsubmit="return confirm('Do you really want to delete?')" id="form1" method="post" action="DeleteStudent1.jsp">
                <h3><%= name %></h3>
                <p>Branch : <%= branch %></p>
                <p>Regno : <%= roll %></p>
                <p>Admission Year : <%= adyear %></p>
                <p>Contact : <%= mobile %></p>
                <p>Email : <%= em %></p>
                    <input value="<%= em %>" type="hidden" name="T6" />
                                
                <p>
                <button type="submit" name="B1" id="B1" class="btn btn-outline-danger">Delete</button>
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
      
        <button type="button" class="btn btn-outline-secondary"><a href="ShowStudents.jsp">BACK</a></button>
                 
  
        </div>
            <%
    }
 %>

        <%@include file="A2.jsp" %>
    
 