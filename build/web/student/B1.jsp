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
            if(ut.equalsIgnoreCase("student")==false)
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
<nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Query Solver</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
            <a class="nav-link active" href="StudentHome.jsp">Home
            <span class="visually-hidden">(current)</span>
          </a>
        </li>
        
        <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
      <button type="button" class="btn btn-primary" style="margin-left: 5px;">Query</button>
      <div class="btn-group" role="group" style="margin-left: -17px;">
    <button id="btnGroupDrop4" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
    <div class="dropdown-menu btn btn-primary" style="margin-left: -80px; width: 8px;" aria-labelledby="btnGroupDrop4">
      <a class="dropdown-item" href="Ask.jsp">Upload Query</a>
      <a class="dropdown-item" href="MyQuestions.jsp">My Questions</a>
      <a class="dropdown-item" href="Solve.jsp">Solved Solutions</a>
      
    </div>
  </div>
</div>
        
            
        
        
        <li class="nav-item">
            <a class="nav-link" href="../LogOut.jsp">Log Out</a>
        </li> 
      </ul>
    </div>
  </div>
</nav>

<div  style="min-height: 200px;">