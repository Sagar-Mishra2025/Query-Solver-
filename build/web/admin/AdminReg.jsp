<%@include file="A1.jsp" %>
<style>
    ::placeholder
    {
        color: #00cccc;
    }
</style>
<div>
    <h1 style="color: #ff9999;">Admin Registration</h1>
       <hr style="border: 3px solid turquoise;">

    
<form id="form1" method="post" action="AdminReg1.jsp"> 
    <h5 style="color: #ff6666;">Name : <input style="margin-left: 172px;" type="text" name="T1" id="txt1" placeholder="Enter The Name"/></h5>
<h5 style="color: #ff6666;">Address : <input style="margin-left: 150px;" type="text" name="T2" id="txt2" placeholder="Enter The Address"/></h5>
<h5 style="color: #ff6666;">Contact : <input style="margin-left: 153px;" type="number" name="T3" id="txt3" placeholder="Enter The Contact"/></h5>
<h5 style="color: #ff6666;">Email : <input style="margin-left: 179px;" type="email" name="T4" id="txt4" placeholder="Enter The Email"/></h5>
<h5 style="color: #ff6666;">Password : <input style="margin-left: 135px;" type="text" name="T5" id="txt5" placeholder="Enter The Password"/></h5>
<h5 style="color: #ff6666;">Confirm password : <input style="margin-left: 40px;" type="text" name="T6" id="txt6" placeholder="Confirm password"/></h5>
<p>
<button type="submit" name="B1" id="B1" class="btn btn-outline-success">Register</button>
</p>
</form>
</div>
<%@include file="A2.jsp" %>