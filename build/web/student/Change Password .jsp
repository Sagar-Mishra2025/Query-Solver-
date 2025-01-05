<%@include file="B1.jsp" %>
    <h1 style="color: #ff3333;">Change Password</h1>
    <hr style="border: 3px solid turquoise;">

    <form action="ChangePassword1.jsp">
    <p style="color: #00cccc;">Old Password <input name="T1" type="text" /></p>
    <p style="color: #00cccc;">New Password <input name="T2" type="text" /></p>
    <p style="color: #00cccc;">Confirm Password <input name="T3" type="text" /></p>
    <p>
        <button type="submit"  class="btn btn-outline-warning" title="Apply The Changes">Change</button>
    </p>
</form>
<%@include file="B2.jsp" %>