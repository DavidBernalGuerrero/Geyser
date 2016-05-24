<%@include file="Cargadores.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
  </head>
  <body>
    <% 
      ResultSet validado = s.executeQuery ("SELECT * FROM Usuarios");
      
      boolean acceso = false;
      
      while (validado.next()) {
        if ((validado.getString("USUARIO").equals(request.getParameter("usuario"))) && 
            (validado.getString("CONTRASEÑA").equals(request.getParameter("contrasenia")))) {
          if (validado.getBoolean("ACCESO")) {
               
            session.setAttribute("idUsuario", validado.getString("ID_USUARIO"));
            session.setAttribute("nombreUsuario", validado.getString("NOMBRE"));
            
            acceso = true;
//            out.println("<script>document.location = \"pagina1.jsp\"</script>");
            out.println("<script>document.location = \"campoTrabajo.jsp\"</script>");
          }
          if (!validado.getBoolean("ACCESO")) {
            out.println("<script>document.location = \"banned.html\"</script>");
          }
        } 
      }
      
      if (!acceso) {
        out.println("<script>document.location = \"indexError.html\"</script>");
      }
      
      conexion.close();     
    %>
  </body>
</html>
