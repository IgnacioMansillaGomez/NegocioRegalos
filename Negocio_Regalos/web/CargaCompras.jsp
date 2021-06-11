
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="listaArticulos" scope="request" class="Model.Gestor"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <%@include file="NavBar.html" %>
    </head>
    <body>
        <div class="container-fluid row-cols-12">
                <div class="col-lg-4">
                    <h1 class="text-center">Carga Compra</h1>
                    <form action="CargarComprasS" method="post">
                        <input type="hidden" name="txtIdPareja" value="${idPareja}">
                        <div class="form-group">
                         <label>Lista Articulos</label>
                            <select class="form-control" name="cboArticulos">
                                <c:forEach var="art" items="${listaArticulos.articulos}">
                                    <option value="${art.codigo}">
                                        ${art.descripcion}
                                    </option>
                                </c:forEach>
                            </select>
                          </div>
                        <button type="submit" class="btn btn-primary mb-2">Registrar Compra</button> <a href="ListadoParejas.jsp" type="button" class="btn btn-primary mb-2" style="margin-left: 5px">Volver a Listado</a>
                    </form>
                </div>
                <div class="col-lg-4">
                    <h1 class="text-center">Carrito Compras</h1>
                    <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th class="text-center">
                                Articulo
                            </th>
                            <th class="text-center">
                                Precio
                            </th>
                        </tr>
                    </thead>
                <tbody>
                    <c:forEach var="articulosPareja" items="${listaArtPareja}">
                        <tr class="text-center">
                        <td>${articulosPareja.descripcion}</td>
                        <td>${articulosPareja.precio}</td>
                        <td>
                            <a href="EliminarCompraS?idCompra=${articulosPareja.codigoCompra}" class="btn btn-danger">Eliminar Articulo</a>
                        </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                   </table>
                </div>
                <div class="col-lg-4">
                    <h1 class="text-center">Hablemos de dinero</h1>
                    <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th class="text-center">
                                Total Compra
                            </th>
                            <th class="text-center">
                                Total Depositado
                            </th>
                            <th class="text-center">
                                Devolución
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="text-center">
                        <td>${totales.totalCompra}</td>
                        <td>${totales.totalDeposito}</td>
                        <td>${totales.devolucion}</td>
                        </tr>
                    </tbody>
                   </table>
                </div>
           </div>
    </body>
</html>
