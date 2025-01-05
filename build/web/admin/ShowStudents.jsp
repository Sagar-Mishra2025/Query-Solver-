<%@page import="sagar.vgt.kota.model.MyLib"%>
<%@include file="A1.jsp" %>

    <div>
    <h1>Student Form Details</h1>
    <hr style="border: 3px solid turquoise;">
<% //scriptlet
    
    //load the mysql driver for java
    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    String sql="select * from reg";
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql) ;
    
    //fetch data from mysql in ResultSet
    //The ResultSet is a 2D data array
    ResultSet r1=p1.executeQuery();
    
    int count=0;
    //show data 
    while(r1.next()) //It will work for every record
    {
        count++;
        String name,branch,roll,adyear,mobile,em;
        name=r1.getString("name");
        branch=r1.getString("branch");
        roll=r1.getString("reg_no");
        adyear=r1.getString("ad_year");
        mobile=r1.getString("contact");
        em=r1.getString("email");
        %>
        <h3><%= name %></h3>
        <p>
            Branch : <%= branch %><br/>
            Regno :  <%= roll %><br/>
            Admission Year :  <%= adyear %><br/>
            Contact Number :  <%= mobile %><br/>
            Email :  <%= em %><br/>
        </p>
        <table>
            <tr>
                <td>
                    <form method="post" action="EditStudent.jsp">
                        <input type="hidden" name="H1" value="<%= em %>"/>
                        <input type="submit" name="B1" class="btn btn-outline-warning" value="Edit" />
                    </form>
                </td>
                <td>
                    <form method="post" action="DeleteStudent.jsp">
                        <input type="hidden" name="H1" value="<%= em %>"/>
                        <input type="submit" name="B1" class="btn btn-outline-danger" value="Delete" />
                    </form>
                    
                </td>
            </tr>
        </table>
        
        
        <%
    }
%>

<h2>Total number of records : <%= count %></h2>
    </div>
<%@include file="A2.jsp" %>