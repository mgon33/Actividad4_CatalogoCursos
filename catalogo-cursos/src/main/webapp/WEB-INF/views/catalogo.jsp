<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<div class="text-center" style="margin-bottom: 20px;">
    <h2>Catálogo de Cursos Disponibles</h2>
    <a href="${pageContext.request.contextPath}/index.jsp" class="btn" style="background-color: #007bff;">Volver al Inicio</a>
</div>

<c:choose>
    <c:when test="${empty cursos}">
        <p class="text-center" style="color: red; font-size: 18px;">No hay cursos disponibles en este momento.</p>
    </c:when>
    
    <c:otherwise>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Categoría</th>
                    <th>Participantes / Plazas</th>
                    <th>Estado</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="curso" items="${cursos}">
                    <tr>
                        <td><c:out value="${curso.id}" /></td>
                        <td><c:out value="${curso.nombre}" /></td>
                        <td><c:out value="${curso.categoria}" /></td>
                        <td><c:out value="${curso.participantes}" /> / <c:out value="${curso.plazas}" /></td>
                        
                        <td>
                            <c:choose>
                                <c:when test="${curso.plazasDisponibles > 0}">
                                    <span class="disponible">
                                        ¡Quedan <c:out value="${curso.plazasDisponibles}"/> plazas!
                                    </span>
                                </c:when>
                                <c:otherwise>
                                    <span class="agotado">Completo</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:otherwise>
</c:choose>

<%@ include file="footer.jsp" %>