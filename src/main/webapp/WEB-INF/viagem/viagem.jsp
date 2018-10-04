<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<t:wrapper>
  <c:if test="${not empty mensagemErro}">
		<div class="container">
			<div class="alert alert-danger">${mensagemErro}</div>
		</div>
	</c:if>

	<c:if test="${not empty mensagemInfo}">
		<div class="container">
			<div class="alert alert-info">${mensagemInfo}</div>
		</div>
	</c:if>
	<section class="container" id="secao-pacotes">
		<jsp:include page="form-viagem.jsp" />
	</section>
<%-- 	<jsp:include page="modal-viagem.jsp"></jsp:include> --%>
</t:wrapper>