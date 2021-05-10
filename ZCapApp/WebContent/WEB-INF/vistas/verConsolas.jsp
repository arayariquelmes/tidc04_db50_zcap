<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:include page="../templates/header.jsp" ></jsp:include>
	<main class="container mt-6">
		<div class="columns is-centered">
			<div class="column is-8">
				<table class="table is-hovered is-bordered is-fullwidth">
					<thead class="has-background-primary">
						<tr>
							<th>Nombre</th>
							<th>Marca</th>
							<th>Año de Lanzamiento</th>
							<th>Acciones</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="consola" items="${consolas}" >
							<tr>
								<td>${consola.nombre}</td>
								<td>${consola.marca}</td>
								<td>${consola.anioLanzamiento}</td>
								<td>
									<a href="VerConsolasController.do?nombreEliminar=${consola.nombre}"
									class="has-text-danger" >Eliminar</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</main>
	</body>
	</html>