<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:include page="../templates/header.jsp" ></jsp:include>
	<main class="container mt-6">
		<!--  EL o Expression Language -->
		<c:if test="${mensaje != null}">
	 		<div class="columns is-centered mb-6">
				<div class="column is-6">
					<div class="notification is-info">
						<p>${mensaje}</p>
					</div>
				</div>
			</div>
		</c:if>
		<c:if test="${errores != null }">
			<div class="columns is-centered mb-6">
				<div class="column is-6">
					<div class="notification is-danger">
						<h6>Existen errores en el formulario</h6>
						<div class="content">
							<ul>
								<c:forEach var="error" items="${errores}" >
									<li>${error}</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</c:if>
		<div class="columns is-centered">
			<div class="column is-6">
				<form method="POST" action="AgregarConsolaController.do" >
					<div class="card">
						<div class="card-header has-background-warning">
							<span class="card-header-title">Agregar Consola</span>
						</div>
						<div class="card-content">
							<div class="field">
								<label class="label" for="nombre-txt">Nombre</label>
								<div class="control">
									<input type="text" class="input" id="nombre-txt" name="nombre-txt" />
								</div>
							</div>
							<div class="field">
								<label class="label" for="marca-select">Marca</label>
								<div class="control">
									<div class="select">
										<select name="marca-select" id="marca-select">
											<option>Microsoft</option>
											<option>Nintendo</option>
											<option>Sony</option>
											<option>Phillips</option>
										</select>
									</div>
								</div>
							</div>
							<div class="field">
								<label class="label" for="anio-txt">Año de Lanzamiento</label>
								<div class="control">
									<input type="number" name="anio-txt" id="anio-txt" class="input" />
								</div>
							</div>
						</div>
						<div class="card-footer has-text-centered">
							<div class="card-footer-item">
								<button type="submit" class="button is-primary">Registrar</button>
							</div>
						</div>
					</div>
					
				</form>
			</div>
		</div>
		
	</main>

</body>
</html>