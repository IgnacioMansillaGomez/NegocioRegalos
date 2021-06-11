
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="listaParejas" scope="request" class="Model.Gestor"></jsp:useBean>
<jsp:useBean id="listaArticulos" scope="request" class="Model.Gestor"></jsp:useBean>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <%@include file="NavBar.html" %>
    </head>
    <body style="background-color: #ffeeba">
        <div class="row"">
            <div class="col-lg-6">
                <div class="col-sm-12">
                    <div>
                        <h4 class="text-center" style="color: #ed969e">Listado de parejas</h4>
                    </div>
                </div>
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th class="text-center">
                                Nombre Pareja
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="parejas" items="${listaParejas.parejas}">
                            <tr class="text-center">
                            <td>${parejas.nombrePareja}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-6">
                <div class="col-sm-12">
                    <div>
                        <h4 class="text-center" style="color: #ed969e">Articulos disponibles</h4>
                    </div>
                </div>
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th class="text-center">
                                Descripcion
                            </th>
                            <th class="text-center">
                                Precio $
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="articulos" items="${listaArticulos.articulos}">
                            <tr class="text-center">
                            <td>${articulos.descripcion}</td>
                            <td>${articulos.precio}</td>
                            </tr>
                            
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>            
           
        
    </body>
</html>
