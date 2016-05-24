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
     
      listaSeries = s.executeQuery ("SELECT * FROM Registros WHERE FK_USUARIO = " + 
              session.getAttribute("idUsuario") + " AND FK_SERIE = " + request.getParameter("ver"));   
      
      int filas = 0;
      
      while (listaSeries.next()) {
        filas++;
      }
      
      String consulta = "INSERT Registros (FK_USUARIO, FK_SERIE, VISTO) VALUES ("
              + session.getAttribute("idUsuario") + ", " + request.getParameter("ver") + ", 0)";
      
      if (filas == 0) {
        s.execute(consulta);
        out.println("<script>document.location = \"insertSeries.jsp\"</script>");        
      } else {
        out.println("<script>document.location = \"insertSeries.jsp\"</script>");  
      }

      %>
  </body>
</html>
