<%-- 
    Document   : cloudlog1
    Created on : Jul 10, 2017, 6:37:07 PM
    Author     : java3
--%>

<%
String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    try {
        if (name.equalsIgnoreCase("cloud") && pass.equalsIgnoreCase("cloud")) {
           %>
    <script type="text/javascript" >
        window.alert("login successfull!!!");
        window.location="cloudhome.jsp";
    </script>
    <%
        } else {
           %>
    <script type="text/javascript" >
        window.alert("invalid username and password!!!");
        window.location="cloudlog.jsp";
    </script>
    <%
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>