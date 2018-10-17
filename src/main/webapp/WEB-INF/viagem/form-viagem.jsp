<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<div class="col-md-12 col-sm-6 col-xs-12">
	<div class="x_panel">
		<div class="x_title">
			<h2>Comprar passagem:</h2>
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
				<form id="form-pacote" method="post">
					<div class="x_panel">
						<div class="x_content">
							<input id="id" name="id" type="hidden">
							<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
								<input type="text" class="form-control" id="inputSuccess2"
									placeholder="Origem"> <span
									class="fa fa-user form-control-feedback right"
									aria-hidden="true"></span>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
								<input type="text" class="form-control" id="inputSuccess3"
									placeholder="Destino"> <span
									class="fa fa-user form-control-feedback right"
									aria-hidden="true"></span>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
								<input type="text" class="form-control" id="inputSuccess4"
									placeholder="Data Ida"> <span
									class="fa fa-calendar form-control-feedback right"
									aria-hidden="true"></span>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
								<input type="text" class="form-control" id="inputSuccess5"
									placeholder="Data Volta"> <span
									class="fa fa-calendar form-control-feedback right"
									aria-hidden="true"></span>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
								<input type="text" class="form-control" id="inputSuccess5"
									placeholder="Valor"> <span
									class="fa fa-money form-control-feedback right"
									aria-hidden="true"></span>
							</div>
							<div class="form-group">
								<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3 mid_center">
									<button type="button" data-toggle="modal"
										data-target="#modal-pacote" class="btn btn-primary">Cancel</button>
									<button class="btn btn-primary" type="reset">Reset</button>
									<button type="submit" class="btn btn-success">Submit</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</table>
		</div>
	</div>
</div>