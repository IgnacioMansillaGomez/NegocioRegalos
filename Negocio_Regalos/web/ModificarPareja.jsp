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
                <h1 class="text-center">Modificar Pareja</h1>
                <form action="ModificarParejaS" method="POST">
                    <input type="hidden" name="txtIdPar" value="${parejaM.codigoPareja}">
                    <div class="form-group mx-sm-3 mb-2">
                      <label>Nombre Pareja</label>
                      <input type="text" class="form-control" name="txtNombrePareja" value="${parejaM.nombrePareja}" required="Complete el campo"/>
                      <br>
                      <button type="submit" class="btn btn-primary mb-2">Modificar Nombre Pareja</button> <a href="ListadoParejas.jsp" type="button" class="btn btn-primary mb-2">Volver a Listado Parejas</a>
                    </div>
                 </form>
            </div>
        </div>
    </body>
</html>
