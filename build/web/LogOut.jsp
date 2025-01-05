<%
    //open existing session
    session=request.getSession(false);
    if(session==null)
    {
        response.sendRedirect("index.jsp");
    }
    else
    {
        try
        {
            //remove parameters from session
            session.removeAttribute("email");
            session.removeAttribute("usertype");
            //remove session
            session.invalidate();
            response.sendRedirect("index.jsp");
        }
        catch(NullPointerException e)
        {
            response.sendRedirect("index.jsp");
        }
    }
%>