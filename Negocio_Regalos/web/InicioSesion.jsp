<%-- 
    Document   : InicioSesion
    Created on : 26 oct. 2020, 21:18:29
    Author     : Nacho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/animate.css">	
	<link rel="stylesheet" type="text/css" href="css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="container-login100">
		<div class="wrap-login100">
                    <form class="login100-form" style="margin-bottom: 100px" method="post" action="InicioSesionS">
			<span class="login100-form-title p-b-34">
                            Inicio Sesión
			</span>
                            <div class="wrap-input100 rs1-wrap-input100">
				<input id="Nombre" class="input100" type="text" name="username" placeholder="Usuario">
				<span class="focus-input100"></span>
                            </div>
                            <div class="wrap-input100 rs2-wrap-input100">
                                <input class="input100" type="password" name="password" placeholder="Contraseña">
                                <span class="focus-input100"></span>
                            </div>
                            <div class="container-login100-form-btn">
                                <a href="/Negocio_Regalos/Main.jsp" style="margin-top: 10px" type="button" class="login100-form-btn" >Ingresar</a>
                            </div>
                            <div class="container-login100-form-btn">
                                <a href="/Negocio_Regalos/Main.jsp" style="margin-top: 10px" type="button" class="login100-form-btn" >Volver a pantalla principal</a>
                            </div>
                    </form>
                    <div class="login100-more" style="background-image: url('Imagenes/Casamiento.jpg');"></div>
		</div>
            </div>
	</div>
	<div id="dropDownSelect1"></div>
	<script src="js/animsition.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/countdowntime.js"></script>
	<script src="js/main.js"></script>
    </body>
</html>
