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
      
      ResultSet listaSeries = null;
     
      listaSeries = s.executeQuery ("SELECT VISTO FROM Registros WHERE FK_USUARIO = " + 
              session.getAttribute("idUsuario") + " AND FK_SERIE = " + request.getParameter("visto"));   
      
      
      listaSeries.first();

      if (listaSeries.getBoolean("VISTO")) {
        String consulta = "UPDATE Registros SET VISTO = 0 WHERE FK_USUARIO = " + 
              session.getAttribute("idUsuario") + " AND FK_SERIE = " + request.getParameter("visto");
      
        s.execute(consulta);
        out.println("<script>document.location = \"campoTrabajo.jsp\"</script>");        
      } else {
        String consulta = "UPDATE Registros SET VISTO = 1 WHERE FK_USUARIO = " + 
              session.getAttribute("idUsuario") + " AND FK_SERIE = " + request.getParameter("visto");
      
        s.execute(consulta);
        out.println("<script>document.location = \"campoTrabajo.jsp\"</script>");  
      }

      %>
  </body>
</html>
