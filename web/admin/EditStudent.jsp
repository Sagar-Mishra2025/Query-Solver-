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
    <h1>Edit and Save Student Details</h1>
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
            <form id="form1" method="post" action="EditStudent1.jsp">
                <p>Name
                    <input value="<%= name %>" type="text" name="T1" id="Txt1" />
                </p>
                <p>Branch
                  <input value="<%= branch %>" type="text" name="T2" id="Txt2" />
                </p>
                <p>Regno
                  <input value="<%= roll %>" type="text" name="T3" id="Txt3" />
                </p>
                <p>Admission Year
                  <input value="<%= adyear %>" type="text" name="T4" id="Txt4" />
                </p>
                <p>Contact
                  <input value="<%= mobile %>" type="text" name="T5" id="Txt5" />
                </p>
                <p>Email
                    <input readonly value="<%= em %>" type="text" name="T6" id="Txt6" />
                </p>
                
                <p>
                <button type="submit" name="B1" class="btn btn-outline-success">Save Changes</button>
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

            <button type="button" class="btn btn-outline-secondary"><a href="ShowStudents.jsp">B A C K</a></button>

    </div>
        <%
    }
    %>

 <%@include file="A2.jsp" %>