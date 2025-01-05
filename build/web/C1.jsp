<%@page import="java.sql.*" %>


<html>
    <head>
        <link href="navbar/bootstrap.min8.css" rel="stylesheet" type="text/css"/>
        <script src="navbar/popper/popper.min.js"></script>
        <script src="navbar/boot/js/bootstrap.bundle.min.js" ></script>
    </head>
    <body>

<nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">QUERY SOLVER</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
            <a class="nav-link active" href="index.jsp">Home
            <span class="visually-hidden">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Recent Question</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Loginform.jsp">Sign In</a>
        </li>
        
      </ul>
     
    </div>
  </div>
</nav>
<div  style="min-height: 200px;">