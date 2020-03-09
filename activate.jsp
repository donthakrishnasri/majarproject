<%-- 
    Document   : activate
    Created on : Jul 13, 2016, 6:00:23 PM
    Author     : java4
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%
    String j = request.getQueryString();
                Connection con = DbConnection.getConnection();
                Statement st =con.createStatement();

    String  email=(String)session.getAttribute("Email");
     System.out.println("Email id"+email);
    int i = st.executeUpdate("update request set status = 'Yes' where email = '" + email + "'");
    if (i != 0) {
        response.sendRedirect("userrequest.jsp?Msgac=Secret_key_sent_to_Your_Email");
    } else {
        response.sendRedirect("userrequest.jsp? msg=Error");
    }
%>