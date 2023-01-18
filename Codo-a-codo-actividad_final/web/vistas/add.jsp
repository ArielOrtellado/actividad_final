<%-- 
    Document   : add
    Created on : 29 dic 2022, 19:29:36
    Author     : Agustin
--%>

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
            <div class="col justify-content-center">
                <h1>Agregar Producto</h1>
                <form action="Controlador">
                    Nombre:<br>
                    <input class="form-control" type="text" name="txtNombre"><br>
                    Categoria:<br>
                    <input class="form-control" type="text" name="txtCategoria"><br>
                    Precio:<br>                
                    <input class="form-control" type="text" name="txtPrecio"><br>                    
                    <input  class="btn btn-primary me-3" type="submit" name="accion" value="Agregar">
                    <a class="btn btn-secondary" href="Controlador?accion=listar">Regresar</a>

                </form>
            </div>

        </div>
    </body>
</html>
