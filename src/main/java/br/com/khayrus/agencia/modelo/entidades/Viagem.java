package br.com.khayrus.agencia.modelo.entidades;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Viagem {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty
	@NotNull
	private String origem;

	@NotEmpty
	@NotNull
	private String destino;
	
	@NotNull
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dtIda;
	
	@NotNull
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dtVolta;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getOrigem() {
		return origem;
	}

	public void setOrigem(String origem) {
		this.origem = origem;
	}

	public String getDestino() {
		return destino;
	}

	public void setDestino(String destino) {
		this.destino = destino;
	}

	public Date getDtIda() {
		return dtIda;
	}

	public void setDtIda(Date dtIda) {
		this.dtIda = dtIda;
	}

	public Date getDtVolta() {
		return dtVolta;
	}

	public void setDtVolta(Date dtVolta) {
		this.dtVolta = dtVolta;
	}
	
}
