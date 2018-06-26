<%@page import="javax.servlet.http.HttpSession"%>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("usrname")!= null)
    { // si la sesion existe
        response.sendRedirect("principal.jsp");
    }
    else
    {
        response.sendRedirect("login.jsp");
    }   
%>