<%-- 
    Document   : CargaParejas
    Created on : 4 nov. 2020, 07:27:32
    Author     : Nacho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <%@include file="NavBar.html" %>
    </head>
    <body>
        <div class="container-fluid row-cols-12">
            <div class="col-lg-6">
                <h1 class="text-center">Carga Pareja</h1>
                <form action="CargaParejasS" method="post">
                    <div class="form-group mx-sm-3 mb-2">
                      <label>Nombre elegido</label>
                      <input type="text" class="form-control" name="txtNombrePareja" required="Complete el campo"/>
                      <br>
                        <button type="submit" class="btn btn-primary mb-2">Registrar Pareja</button> <a href="ListadoParejas.jsp" type="button" class="btn btn-primary mb-2">Volver a Listado</a>
                    </div>
                </form>
            </div>
    </body>
</html>
