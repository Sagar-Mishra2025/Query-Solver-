<%@include file="A1.jsp" %>
<style>
    a
    {
     color: red; 
     text-decoration: none;
    }
    a:hover
    {
        color: #fff;
    }
    ::placeholder
    {
        color: orangered;
    }
</style>
<div>
    <h1 style="color: #ff9999;">Change Password</h1>
       <hr style="border: 3px solid turquoise;">

<form action="ChangePassword1.jsp">
    <h5 style="color: #009966;">Old Password : <input style="margin-left: 73px;" name="T1" type="text" placeholder="Enter Old Password" /></h5>
    <h5 style="color: #009966;">New Password : <input style="margin-left: 63px;" name="T2" type="text" placeholder="Enter New Password" /></h5>
    <h5 style="color: #009966;">Confirm Password : <input style="margin-left: 24px;" name="T3" type="text" placeholder="Enter Confirm Password" /></h5>
    <p>
        <button type="submit" class="btn btn-outline-warning">Change</button>
    </p>
</form>
</div>
<%@include file="A2.jsp" %>