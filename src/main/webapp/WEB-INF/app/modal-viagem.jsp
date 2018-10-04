<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="modal fade" id="modal-pacote" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="x_title modal-header">
				<h4 class="modal-title">Informações da Viagem</h4>
<!-- 				<button type="button" class="fa close" data-dismiss="modal" data-target="#modal-pacote" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
				<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
			</div>
			<form id="form-pacote" method="post">
				<div class="x_panel">
					<div class="x_content">
						<input id="id" name="id" type="hidden">
						<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
							<input type="text" class="form-control" id="inputSuccess2" placeholder="Origem"> 
							<span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
							<input type="text" class="form-control" id="inputSuccess3" placeholder="Destino">
							<span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
							<input type="text" class="form-control" id="inputSuccess4" placeholder="Data Ida">
							<span class="fa fa-calendar form-control-feedback right" aria-hidden="true"></span>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
							<input type="text" class="form-control" id="inputSuccess5" placeholder="Data Volta">
							<span class="fa fa-calendar form-control-feedback right" aria-hidden="true"></span>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
							<input type="text" class="form-control" id="inputSuccess5" placeholder="Valor">
							<span class="fa fa-money form-control-feedback right" aria-hidden="true"></span>
						</div>
						<div class="form-group">
							<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
								<button type="button" data-toggle="modal" data-target="#modal-pacote" class="btn btn-primary">Cancel</button>
								<button class="btn btn-primary" type="reset">Reset</button>
								<button type="submit" class="btn btn-success">Submit</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<%-- 					<form id="form-pacote" method="post"> --%>
	<!-- 						<input id="id" name="id" type="hidden"> -->
	<!-- 						<div class="modal-body"> -->
	<!-- 							<div class="form-group"> -->
	<!-- 								<label for="origem">Origem: </label> <input id="origem" name="origem" class="form-control" /> -->
	<!-- 							</div> -->
	<!-- 							<div class="form-group"> -->
	<!-- 								<label for="destino">Destino: </label> <input id="destino" name="destino" class="form-control" /> -->
	<!-- 							</div> -->
	<!-- 							<div class="form-group"> -->
	<!-- 								<label for="categoria">Categoria:</label> <select id="categoria" name="categoria" class="form-control"> -->
	<%-- 									<c:forEach items="${categorias}" var="categoria"> --%>
	<%-- 										<option value="${categoria}">${categoria}</option> --%>
	<%-- 									</c:forEach> --%>
	<!-- 								</select> -->
	<!-- 							</div> -->
	<!-- 												<label class="dtIda control-label">Data Ida:</label> -->
	<!-- 							                        <div class="col-md-4 col-sm-12 col-xs-4"> -->
	<!-- 							                          <input type="text" class="form-control" data-inputmask="'mask': '99/99/9999'"> -->
	<!-- 							                          <span class="fa fa-calendar form-control-feedback" aria-hidden="true"></span> -->
	<!-- 							                        </div> -->
	<!-- 												<label for="dtVolta">Data Volta: </label>  -->
	<!-- 												<input id="dtVolta" name="dtVolta" class="form-control"> -->
	<!-- 							<div class="form-group"> -->
	<!-- 								<div class="col-md-6 col-sm-6 col-xs-12"> -->
	<!-- 									<input id="dtIda" name="dtIda" type="text" class="form-control" data-inputmask="'mask': '99/99/9999'" placeholder="Data de Ida"> <span class="fa fa-calendar form-control-feedback right" aria-hidden="true"></span> -->
	<!-- 								</div> -->
	<!-- 							</div> -->
	<!-- 							<div class="form-group"> -->
	<!-- 								<div class="col-md-6 col-sm-6 col-xs-12"> -->
	<!-- 									<input id="dtVolta" name="dtVolta" type="text" class="form-control" data-inputmask="'mask': '99/99/9999'" placeholder="data de volta"> <span class="fa fa-calendar form-control-feedback right" aria-hidden="true"></span> -->
	<!-- 								</div> -->
	<!-- 							</div> -->
	<!-- 							<div class="form-group"> -->
	<!-- 														<div class="modal-footer"> -->
	<!-- 								<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button> -->
	<!-- 								<button id="btn-salvar" type="button" class="btn btn-primary">Salvar informações</button> -->
	<!-- 														</div> -->
	<!-- 							</div> -->
	<%-- 					</form> --%>
</div>
<script src="/agencia/static/vendors/jquery/dist/jquery.min.js"></script>
<script>
$('#dtIda').datetimepicker({
    format: 'DD.MM.YYYY'
});
$('#dtVolta').datetimepicker({
    format: 'DD.MM.YYYY'
});
</script>