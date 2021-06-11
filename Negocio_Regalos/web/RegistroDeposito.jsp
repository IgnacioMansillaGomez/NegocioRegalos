
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <%@include file="NavBar.html" %>
    </head>
    <body>
        <div class="container-fluid row-cols-12">
            <div class="col-lg-6">
                <h1 class="text-center">Carga Deposito</h1>
                <form action="RegistroDepositoS" method="post">
                    <div class="form-group mx-sm-3 mb-2">
                      <label>Importe a Depositar $</label>
                      <input type="number" class="form-control" name="txtImporte" required="Complete el campo"/>
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                      <label>Nombre Depositante</label>
                      <input type="text" class="form-control" name="txtNombreComprador" required="Complete el campo"/>
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                      <label>Apellido Depositante</label>
                      <input type="text" class="form-control" name="txtApellidoComprador" required="Complete el campo"/>
                      <br>
                      <input type="hidden" name="txtIdPareja" value="${idPareja}">
                      <button type="submit" class="btn btn-success mb-2">Registrar deposito</button>    <a href="ListadoParejas.jsp" type="button" class="btn btn-primary mb-2">Volver a Listado</a>
                    </div>
                 </form>
            </div>
        </div>
    </body>
</html>
