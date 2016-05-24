<%@page import="java.util.ArrayList"%>
<%@include file="Cargadores.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Géyser - Tu Gestor de Series Online</title>
  </head>
  <body>    
    <%
      out.println(s.execute("DELETE FROM Registros WHERE FK_SERIE = " + request.getParameter("borrar") +
              " AND FK_USUARIO =" + session.getAttribute("idUsuario")));
      
      %>    
      <script>document.location = "campoTrabajo.jsp" </script>
  </body>
</html>
