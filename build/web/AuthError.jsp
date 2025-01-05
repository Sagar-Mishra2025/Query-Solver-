<%@include file="C1.jsp" %>
<style>
    .h
    {
    border:3px solid black;
    width: auto;
    height: 300px;
    background-color: darksalmon;
    
    }
    .d
    {
        border:3px solid black;
        width: auto;
        height: 50px;
        text-align: center;
        background-color: #f5b4b2;
    }
     .b
    {
        border: 2px solid red;
        background-color: bisque;

    }
</style>

<div class="h">
    <h1 class="d" style="color: red;">Authorization error</h1>
    <h2 style="color: yellow;">You are not authorized user</h2>
    <h3><a style="color: blue;" href="Loginform.jsp">Goto Login</a></h3>
</div>
<%@include file="C2.jsp" %>