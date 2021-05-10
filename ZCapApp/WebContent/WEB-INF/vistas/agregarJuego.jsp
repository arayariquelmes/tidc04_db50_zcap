<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:include page="../templates/header.jsp" ></jsp:include>
	<main class="container mt-6">
		<c:if test="${mensaje !=null }" >
			<div class="columns is-centered">
				<div class="column is-8">
					<div class="notification is-primary">
						<p>${mensaje}</p>
					</div>
				</div>
			</div>
		</c:if>
		<div class="columns is-centered">
			<div class="column is-8">
				<c:if test="${consolas.size() > 0 }">
				<form method="POST" action="AgregarJuegoController.do">
				<div class="card">
					<div class="card-header has-background-warning ">
						<span class="card-header-title has-text-centered is-centered">Agregar Juego</span>
					</div>
					<div class="card-content">
						<div class="field">
							<label for="nombre-txt" class="label">Nombre</label>
							<div class="control">
								<input type="text" class="input" id="nombre-txt" name="nombre-txt" />
							</div>
						</div>
						<div class="field">
							<label for="descripcion-txt" class="label">Descripción</label>
							<div class="control">
								<textarea class="textarea" id="descripcion-txt" name="descripcion-txt">
								</textarea>
							</div>
							
						</div>
						<div class="field">
							<label for="consola-select" class="label">Consola</label>
							<div class="control">
								<div class="select">
									<select id="consola-select" name="consola-select">
										<c:forEach items="${consolas}" var="consola" >
											<option value="${consola.nombre}" >${consola.nombre}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<div class="field">
							<label class="label" for="apto-radio">Apto para niños?</label>
							<div class="control">
								<label class="radio">
									<input type="radio" name="apto-radio" value="si" >
									Si
								</label>
								<label class="radio">
									<input type="radio" name="apto-radio" checked value="no">
									No
								</label>
							</div>
						</div>
						<div class="field">
							<label class="label" for="precio-txt">Precio</label>
							<div class="control">
								<input type="number" id="precio-txt" class="input" name="precio-txt" >
							</div>
						</div>
						<div class="field">
							<label class="label" for="fecha-txt">Fecha de Lanzamiento</label>
							<div class="control">
								<input type="date" class="input" id="fecha-txt" name="fecha-txt">
							</div>
						</div>
					</div>
					<div class="card-footer">
						<div class="card-footer-item has-text-centered">
							<button type="submit" class="button is-info">Registrar</button>
						</div>
					</div>
				</div>
				</form>
				</c:if>
				<c:if test="${consolas.size() == 0 }">
				
					<div class="notification is-link">
						<p>Para poder ingresar un juego requiere ingresar al menos una consola</p>
						<p>Puede ingresar una <a href="AgregarConsolaController.do"> aqui</a></p>
					</div>
				</c:if>
				
			</div>
		</div>
	</main>
	</body>
	</html>