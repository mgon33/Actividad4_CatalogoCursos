<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="text-center">
    <h2>Bienvenido a nuestro gestor de cursos</h2>
    <p>Descubre nuestra oferta formativa, mira los cursos disponibles y sus plazas.</p>
    <br>
    <a href="${pageContext.request.contextPath}/catalogo" class="btn">Ver Catálogo de Cursos</a>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>