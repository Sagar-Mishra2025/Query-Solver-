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
    <h1 style="color: #ff3333;">Upload Question</h1>
       <hr style="border: 3px solid turquoise;">
    
    <form method="post" action="Ask1.jsp">

        <h4 style="color: #00cccc;"><b>Subject</b><br> 
                <input type="text" name="T1" /></h4>
        
        <h4 style="color: #00cccc;"><b>Question</b></h4>
        <textarea rows="5" cols="60" name="T2"></textarea>

        
        <p><br>
            <button type="submit" class="btn btn-outline-success" title="Click To Upload Question">Upload</button>
        </p>
        <button type="button" class="btn btn-outline-primary" title="Back To Home"><a href="StudentHome.jsp">B A C K</a></button>
        
    </form>
</div>
<%@include file="B2.jsp" %>