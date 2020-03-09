<%-- 
    Document   : ureg1
    Created on : Jul 7, 2017, 4:42:07 PM
    Author     : java3
--%>

<%@page import="network.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    String email = request.getParameter("email");
    String tenant = "tenant1";
    String gender = request.getParameter("gender");
    String dob = request.getParameter("dob");
    String country = request.getParameter("country");
    System.err.println("Name==" + name + "\npass==" + pass + "\nemail==" + email + "\ntenant==" + tenant +"\ngender==" + gender+ "\ndob==" + dob + "\ncountry==" + country );
      try {
    Connection conn = DbConnection.getConnection();
    Statement sto = conn.createStatement();
    ResultSet rs = sto.executeQuery("select  count(*)  from reg where name ='"+name+"'");
   while(rs.next()){ 
          int count=rs.getInt(1);
          if(count==0) 
          {
        int i = sto.executeUpdate("insert into reg(name, pass, mail, tenant, gen, dob, country)values('" + name + "','" + pass + "','" + email + "','" + tenant + "','" + gender + "','" + dob + "','" + country + "')");
        if (i != 0) {
            System.out.println("success");
          %>
    <script type="text/javascript" >
        window.alert("registration successfull!!");
        window.location="t1log.jsp";
    </script>
    <%
        } else {
            %>
    <script type="text/javascript" >
        window.alert("registration failedl!!");
        window.location="t1reg.jsp";
    </script>
    <%
        }
          } else {
              %>
    <script type="text/javascript" >
        window.alert("user name already exists");
        window.location="t1reg.jsp";
    </script>
    <%
          }
    }
      }catch (Exception ex) {
        ex.printStackTrace();
    }
%>