
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="NavBar.html" %>
    </head>
    <body>
        <div class="container-fluid row-cols-12">
            <div class="col-lg-6">
                <h1 class="text-center">Modificar Articulo</h1>
                <form action="ModificarArticuloS" method="post">
                    <input type="hidden" name="txtIdArt" value="${articuloM.codigo}">
                    <div class="form-group mx-sm-3 mb-2">
                      <label>Precio $</label>
                      <input type="number" class="form-control" name="txtPrecio" value="${articuloM.precio}" required="Complete el campo"/>
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                      <label>Descripcion</label>
                      <input type="text" class="form-control" name="txtDescripcion" value="${articuloM.descripcion}" required="Complete el campo"/>
                      <br>
                      <button type="submit" class="btn btn-primary mb-2">Modificar Articulo</button> <a href="ListadoArticulos.jsp" type="button" class="btn btn-primary mb-2">Volver a Listado Articulos</a>
                    </div>
                 </form>
            </div>
        </div>
    </body>
</html>
