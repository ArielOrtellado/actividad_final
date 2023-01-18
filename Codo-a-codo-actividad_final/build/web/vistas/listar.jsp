<%-- 
    Document   : listar
    Created on : 29 dic 2022, 19:29:28
    Author     : Agustin
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
        <div class="container mt-5">
            <div class="d-flex justify-content-between">
                <h1 class="">Productos</h1>
                <a  class="btn btn-primary" href="Controlador?accion=add">Agregar nuevo producto</a>
            </div>
            <br>
            <table class="table table-bordered mt-3">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Categoria</th>
                        <th class="text-center">Precio</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <%
                    ProductoDAO dao = new ProductoDAO();
                    List<Producto> list = dao.listar();
                    Iterator<Producto> iter = list.iterator();
                    Producto produc = null;
                    while (iter.hasNext()) {
                        produc = iter.next();

                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=produc.getId()%></td>
                        <td class="text-center"><%=produc.getNombre()%></td>
                        <td class="text-center"><%=produc.getCategoria()%></td>
                        <td class="text-center"><%=produc.getPrecio()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editar&id=<%=produc.getId()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&id=<%=produc.getId()%>">Eliminar</a>
                        </td>
                    </tr>  
                    <%}%>
                </tbody>

            </table>
        </div>
    </body>
</html>
