
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="listaReportes" scope="request" class="Model.Gestor"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <%@include file="NavBar.html" %>
    </head>
    <body>
        <div class="col-lg-6">
            <div class="col-sm-12">
                <div>
                    <h4 class="text-center">Reporte number one</h4>
                </div>
            </div>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th class="text-center">
                            Nombre Pareja
                        </th>
                        <th class="text-center">
                            Cantidad Depositos
                        </th>
                        <th class="text-center">
                            Total Depositado
                        </th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="parejas" items="${listaReportes.parejasDepositos}">
                        <tr class="text-center">
                        <td>${parejas.nombre}</td>
                        <td>${parejas.cantDepositos}</td>
                        <td>${parejas.totalDepositado}</td>
                        </tr>
                </c:forEach>
                </tbody>
            </table>
            </div>
            <div class="col-lg-6">
            <div class="col-sm-12">
                <div>
                    <h4 class="text-center">Reporte number three</h4>
                </div>
            </div>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th class="text-center">
                            Articulo
                        </th>
                        <th class="text-center">
                            Cantidad de parejas que los solicitaron
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="cantidad" items="${listaReportes.articulosMasSolicitados}">
                        <tr class="text-center">
                        <td>${cantidad.descripcion}</td>
                        <td>${cantidad.cantidad}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            </div>
        <div class="col-lg-6">
            <div class="col-sm-12">
                <div>
                    <h4 class="text-center">Reporte number two</h4>
                </div>
            </div>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th class="text-center">
                            Total Facturado por todas las parejas
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="text-center">
                        <td>${listaReportes.totalFacturado}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
