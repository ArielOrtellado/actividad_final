<%-- 
    Document   : edit
    Created on : 29 dic 2022, 19:29:44
    Author     : Agustin
--%>

<%@page import="Modelo.Producto"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Proyecto final</title>
    </head>
    <body>

        <div class="container">
            <div class="col">
                <%
                    ProductoDAO dao = new ProductoDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idproduc"));
                    Producto p = (Producto) dao.list(id);
                %>
                <h1>Modificar Producto</h1>
                <form action="Controlador">
                    Nombre:<br>
                    <input class="form-control" type="text" name="txtNombre" value="<%=p.getNombre()%>"><br>
                    Categoria:<br>
                    <input class="form-control"class="form-control" type="text" name="txtCategoria" value="<%=p.getCategoria()%>"><br>
                    Precio:<br>                
                    <input class="form-control" type="text" name="txtPrecio" value="<%=p.getPrecio()%>"><br>
                    <input class="form-control" type="hidden" name="txtid" value="<%=p.getId()%>">
                    <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                    <a class="btn btn-secondary" href="Controlador?accion=listar" target="target">Regresar</a>
                </form>
            </div>            
        </div>
    </body>
</html>
