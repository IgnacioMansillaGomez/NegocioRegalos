<%-- 
    Document   : ListadoParejas
    Created on : 2 nov. 2020, 16:43:44
    Author     : Nacho
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Pareja"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="listaParejas" scope="request" class="Model.Gestor"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <%@include file="NavBar.html" %>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="col-lg-12">
            <div class="col-sm-12">
                <div>
                    <h4 class="text-center">Listado de parejas</h4>
                </div>
            </div>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th class="text-center">
                            Codigo Pareja
                        </th>
                        <th class="text-center">
                            Nombre Pareja
                        </th>
                        <th class="text-center">
                            Acciones
                        </th>
                        <th class="text-center">
                           Let´s make some money
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="parejas" items="${listaParejas.parejas}">
                        <tr class="text-center">
                        <td>${parejas.codigoPareja}</td>
                        <td>${parejas.nombrePareja}</td>
                        <td>
                            <a href="ModificarParejaS?id=${parejas.codigoPareja}" class="btn btn-warning">
                                Editar
                            </a>
                            <a href="EliminarParejasS?id=${parejas.codigoPareja}"class="btn btn-danger">
                                Eliminar
                            </a>
                            <a href="RegistroDepositoS?id=${parejas.codigoPareja}"class="btn btn-success">
                                Cargar Deposito
                            </a>
                        </td>
                        <td>
                            <a href="CargarComprasS?id=${parejas.codigoPareja}"class="btn btn-success">
                                Registrar Compra
                            </a>
                        </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <c:if test="${not empty error}">
                <p>
                  error:${error}  
                </p>
            </c:if>
        </div>
    </body>
</html>
