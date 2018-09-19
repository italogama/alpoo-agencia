<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<div class="col-md-12 col-sm-6 col-xs-12">
	<div class="x_panel">
		<div class="x_title">
			<h2>
				Ultimas Viagens :
			</h2>
			<ul class="nav navbar-right panel_toolbox">
				<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
				</li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"><i
						class="fa fa-wrench"></i></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Settings 1</a></li>
						<li><a href="#">Settings 2</a></li>
					</ul></li>
				<li><a class="close-link"><i class="fa fa-close"></i></a></li>
			</ul>
			<div class="clearfix"></div>
		</div>
		<div class="x_content">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th>Origem</th>
						<th>Destino</th>
						<th>Categoria</th>
						<th>Editar</th>
						<th>Deletar</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${pacotes}" var="pacote">
						<tr data-id="${pacote.id}">
							<td>${pacote.id}</td>
							<td>${pacote.origem}</td>
							<td>${pacote.destino}</td>
							<td>${pacote.categoria}</td>
							<td><button type="button" class="btn btn-round btn-warning btn-editar">Editar</button></td>
							<td><button type="button" class="btn btn-round btn-danger btn-deletar">Deletar</button></td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
		<tr>
			<td colspan="6"><h5>Pacotes cadastrados: <span
				id="quantidade-pacotes">${pacotes.size()}</span></h5></td>
		</tr>
		<tr>
			<td colspan="6">
				<button type="button" class="btn btn-round btn-primary" data-toggle="modal" data-target="#modal-pacote">
				<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Cadastrar Pacote
				
				</button>
			</td>
		</tr>
	</tfoot>
			</table>

		</div>
	</div>
</div>
<!-- <table -->
<!-- 	class="table table-hover table-condensed table-striped table-bordered"> -->
<!-- 	<thead> -->
<!-- 		<tr> -->
<!-- 			<td style="width: 10%">#</td> -->
<!-- 			<td style="width: 30%">Origem</td> -->
<!-- 			<td style="width: 30%">Destino</td> -->
<!-- 			<td style="width: 10%">Categoria</td> -->
<!-- 			<td style="width: 10%">Editar</td> -->
<!-- 			<td style="width: 10%">Deletar</td> -->
<!-- 		</tr> -->
<!-- 	</thead> -->
<!-- 	<tbody> -->
<%-- 		<c:forEach items="${pacotes}" var="pacote"> --%>
<%-- 			<tr data-id="${pacote.id}"> --%>
<%-- 				<td>${pacote.id}</td> --%>
<%-- 				<td>${pacote.origem}</td> --%>
<%-- 				<td>${pacote.destino}</td> --%>
<%-- 				<td>${pacote.categoria}</td> --%>
<!-- 				<td><button type="button" class="btn btn-warning btn-editar">Editar</button></td> -->
<!-- 				<td><button type="button" class="btn btn-danger btn-deletar">Deletar</button></td> -->
<!-- 			</tr> -->
<%-- 		</c:forEach> --%>
<!-- 	</tbody> -->
<!-- 	<tfoot> -->
<!-- 		<tr> -->
<!-- 			<td colspan="6">Pacotes cadastrados: <span -->
<%-- 				id="quantidade-pacotes">${pacotes.size()}</span></td> --%>
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td colspan="6"> -->
<!-- 				<button type="button" class="btn btn-primary" data-toggle="modal" -->
<!-- 					data-target="#modal-pacote">Cadastrar Pacote</button> -->
<!-- 			</td> -->
<!-- 		</tr> -->
<!-- 	</tfoot> -->
<!-- </table> -->