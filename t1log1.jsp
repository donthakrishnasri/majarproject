<%-- 
    Document   : ulog1
    Created on : Jul 10, 2017, 10:51:29 AM
    Author     : java3
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="network.DbConnection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    String tenant = "tenant1";
    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = null;
    try {
        rs = st.executeQuery("select * from reg where name='" + name + "' and pass='" + pass + "' and tenant='" + tenant + "'");
        if (rs.next()) {
            session.setAttribute("t1id", rs.getString("id"));
            session.setAttribute("t1mail", rs.getString("mail"));
            session.setAttribute("t1name", rs.getString("name"));
            session.setAttribute("t1tenant", rs.getString("tenant"));
            System.out.println("Sucess");
            %>
    <script type="text/javascript" >
        window.alert("login successfull!!!");
        window.location="t1home.jsp";
    </script>
    <%
        } else {
            %>
    <script type="text/javascript" >
        window.alert("invalid username and password!!!");
        window.location="t1log.jsp";
    </script>
    <%
        }

    } catch (Exception e) {
        e.printStackTrace();

    }
%>