
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <%@include file="NavBar.html" %>
        <title>Altas</title>
    </head>
    <body>
        <div class="container-fluid row-cols-12">
            <div class="col-lg-6">
                <h1 class="text-center">Carga Articulos</h1>
                <form action="CargaArticuloS" method="post">
                    <div class="form-group mx-sm-3 mb-2">
                      <label>Precio $</label>
                      <input type="number" class="form-control" name="txtPrecio" required="Complete el campo"/>
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                      <label>Descripcion</label>
                      <input type="text" class="form-control" name="txtDescripcion" required="Complete el campo"/>
                      <br>
                      <button type="submit" class="btn btn-primary mb-2">Cargar Articulo</button>
                    </div>
                    
                 </form>
            </div>
        </div>
    </body>
</html>
