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
    <h1 style="color: #ff3333;">My Questions</h1>
       <hr style="border: 3px solid turquoise;">
    
<%
    MyLib obj=new MyLib();
    Connection cn=obj.create_Connection();
    String sql="Select * from questions where qby=?";
    PreparedStatement p1=cn.prepareStatement(sql);
    p1.setString(1, e1);
    ResultSet r1=p1.executeQuery();
    int i=1;
    while(r1.next())
    {
        String question=r1.getString("question");
        String sub=r1.getString("qsubject");
        String dt=r1.getString("qdate");
        %>
        <h3 style="color: #00cccc;">Q<%= i %>. <%= question %></h3>
        <table>
            
        
            <tr>
                <td style="color: #00cccc;">
                    Subject : <%= sub %>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Date : <%= dt %>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <form method="post" action="EditMyQuestion.jsp">
                        <input type="hidden" name="H1" value="<%= r1.getString("qid") %>" />
                        <button type="submit" class="btn btn-outline-warning" title="Edit Question">Edit</button>&nbsp;&nbsp;
                    </form>
                </td>
                <td>
                    <form method="post" action="DeleteMyQuestion.jsp">
                      
                        <input type="hidden" name="H1" value="<%= r1.getString("qid") %>" />
                        <button type="submit" name="B1" class="btn btn-outline-danger" title="Delete Question">Delete</button>
                    </form>
                </td>
                <td>
                    <form method="post" action="ans.jsp">
                        
                        <input type="hidden" name="H1" value="<%= r1.getString("qid") %>" />
                        <button type="submit" name="B1" class="btn btn-outline-success m-2">Show</button>
                    </form>

                </td>
            </tr>
        </table>
        
        <%
        i++;
    }
%>
<button type="button" class="btn btn-outline-primary" title="Back To Home"><a href="StudentHome.jsp">B A C K</a></button>
</div>
<%@include file="B2.jsp" %>