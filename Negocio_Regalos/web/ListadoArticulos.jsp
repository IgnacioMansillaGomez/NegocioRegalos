<%@page import="java.util.ArrayList"%>
<%@page import="Model.Articulo"%>
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
        <div class="col-lg-6">
            <div class="col-sm-12">
                <div>
                    <h4 class="text-center">Lista de Articulos</h4>
                </div>
            </div>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th class="text-center">
                            Codigo Articulo
                        </th>
                        <th class="text-center">
                            Precio
                        </th>
                        <th class="text-center">
                            Descripcion
                        </th>
                        <th class="text-center">
                            Acciones
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="articulos" items="${listaArticulos.articulos}">
                        <tr class="text-center">
                        <td>${articulos.codigo}</td>
                        <td>${articulos.precio}</td>
                        <td>${articulos.descripcion}</td>
                        <td>
                            <a href="ModificarArticuloS?id=${articulos.codigo}" class="btn btn-warning">
                                Editar
                            </a>
                            
                            <a href="EliminarArticuloS?id=${articulos.codigo}"class="btn btn-danger">
                                Eliminar
                            </a>
                        </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
