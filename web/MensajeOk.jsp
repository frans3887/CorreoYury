<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>OK</title>
    </head>
    <body>
        <%
              String mensaje;
              String username;
              mensaje=request.getParameter("mensaje");
              username=request.getParameter("username");
         %>
        
        
    <center>
        
        <h1>Bien!</h1>

        <h3> <%=mensaje+"<br><br>"+username%></h3>

        <br><br><br>
        <button onclick="goBack()">Volver</button>
        <script>
        function goBack() 
        {
            window.history.back();
        }
        </script>
    </center>
</body>
</html>