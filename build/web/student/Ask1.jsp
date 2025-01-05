<%@include file="B1.jsp" %>
<h1>Upload Question</h1>
<%  //  scriptlet

  //load the mysql driver for java
    Class.forName("com.mysql.jdbc.Driver");
    //Create connection between java and mysql server
    String path="jdbc:mysql://localhost:3307/sagar";
    String dbuser="root";
    String dbpass="";
    Connection cn=DriverManager.getConnection(path, dbuser, dbpass) ;
    String subject,query;
    subject=request.getParameter("T1");
    query=request.getParameter("T2");
    String sql="insert into questions values(?,?,?,?,?)";
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql) ;
    p1.setInt(1, 0);
    p1.setString(2, subject);
    p1.setString(3, query);
    p1.setLong(4, System.currentTimeMillis());
    p1.setString(5, e1);
    int a=p1.executeUpdate();
    if(a==1)
    {
        %>
        <h2> Question Uploaded</h2>
        <%
    }
    else
    {
        %>
        <h2>Unable To Upload Question</h2>
    <%
      }
    %>
    
    <h3>
        <a href="Ask.jsp">Upload More</a>
    </h3>
<%@include file="B2.jsp" %>