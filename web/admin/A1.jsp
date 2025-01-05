<%@page import="java.sql.*" %>
<%
    //session Apply
    String e1="",ut="";
    //check existing session
    session=request.getSession(false);
    if(session==null)
    {
        response.sendRedirect("../AuthError.jsp");
    }
    else
    {
        try
        {
            e1=session.getAttribute("email").toString();
            ut=session.getAttribute("usertype").toString();
            if(ut.equalsIgnoreCase("admin")==false)
            {
                response.sendRedirect("../AuthError.jsp");
            }
        }
        catch(NullPointerException e)
        {
            response.sendRedirect("../AuthError.jsp");
        }
    }
%>

<html>
    <head>
<link href="../navbar/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="../navbar/popper/popper.min.js"></script>
<script src="../navbar/boot/js/bootstrap.bundle.js" ></script>
    </head>
    <body>
    
        <nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Query Solver</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor02">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
            <a class="nav-link active" href="AdminHome.jsp">Home
            <span class="visually-hidden">(current)</span>
          </a>
        </li>

     
       
  
        <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
      <button type="button" class="btn btn-danger" style="margin-left: 50px;">Admin</button>
  <div class="btn-group" role="group">
    <button id="btnGroupDrop4" type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
    <div class="dropdown-menu btn btn-danger" style="margin-left: -80px; width: 8px;" aria-labelledby="btnGroupDrop4">
      <a class="dropdown-item" href="AdminReg.jsp">Add Admin</a>
      <a class="dropdown-item" href="ShowAdmin.jsp">Show Admin</a>
    </div>
  </div>
</div>
        
  <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
      <button type="button" class="btn btn-danger" style="margin-left: 50px;">Student</button>
  <div class="btn-group" role="group">
    <button id="btnGroupDrop4" type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
    <div class="dropdown-menu btn btn-danger" style="margin-left: -90px; width: 8px;" aria-labelledby="btnGroupDrop4">
      <a class="dropdown-item" href="StudentReg.jsp">Add Student</a>
      <a class="dropdown-item" href="ShowStudents.jsp">Manage Student</a>
    </div>
  </div>
</div>
        
        
        <li class="nav-item">
          <a class="nav-link" href="#">Report</a>
        </li> 
        
        <li class="nav-item">
            <a class="nav-link" href="../LogOut.jsp">Log Out</a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>

<div  style="min-height: 200px;">