<%@page import ="java.sql.*" %>
<%@page import ="java.io.IOException" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.io.*"%>
    <html> 
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Login Check</title> 
        </head> 
<body> 
        <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String driver = "oracle.jdbc.driver.OracleDriver";
        String dbURL = "jdbc:oracle:thin:@localhost:1521:agenciaviaje";
        String dbuser = "Diego";
        String dbpassword = "root";
        Connection theConnection = null;
        PreparedStatement theStatement = null;


            try{  
                Class.forName(driver);
                theConnection=DriverManager.getConnection(dbURL,dbuser,dbpassword);  
                theStatement = theConnection.prepareStatement("select * from usuarios_agencia where usuario_agencia=? and contra_agencia=?");
                theStatement.setString(1,request.getParameter("username"));
                theStatement.setString(2,request.getParameter("password"));
                ResultSet theResult = theStatement.executeQuery();
                boolean Result = false;

                if(theResult.next()) {
                    Result = true;
                    out.println("Success");
                response.sendRedirect("Home.jsp");}
                    
                else {
                    Result = false;
                    out.println("Failed");
                    request.setAttribute("errorMessage", "Invalid user or password");
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                   %> <script>
                    
                    //location.reload();
                    </script>
                    <%
                    //response.sendRedirect("Index.jsp");

                }
            }
                catch(Exception e){
                    out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                }
        %>
</body>

    </html>