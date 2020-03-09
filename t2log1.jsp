<%-- 
    Document   : t2log1
    Created on : Jul 10, 2017, 12:27:54 PM
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
    String tenant = "tenant2";
    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = null;
    try {
        rs = st.executeQuery("select * from reg where name='" + name + "' and pass='" + pass + "' and tenant='" + tenant + "'");
        if (rs.next()) {
            session.setAttribute("t2id", rs.getString("id"));
            session.setAttribute("t2mail", rs.getString("mail"));
            session.setAttribute("t2name", rs.getString("name"));
            session.setAttribute("t2tenant", rs.getString("tenant"));            
             session.setAttribute("t2pkey", rs.getString("pkey"));
             session.setAttribute("t2policy", rs.getString("policy"));
            System.out.println("Sucess");
           %>
    <script type="text/javascript" >
        window.alert("login successfull!!!");
        window.location="t2home.jsp";
    </script>
    <%
        } else {
            %>
    <script type="text/javascript" >
        window.alert("invalid username and password!!!");
        window.location="t2log.jsp";
    </script>
    <%
        }

    } catch (Exception e) {
        e.printStackTrace();
    }
%>
