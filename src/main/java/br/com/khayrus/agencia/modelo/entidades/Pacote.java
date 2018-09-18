package br.com.khayrus.agencia.modelo.entidades;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

import br.com.khayrus.agencia.modelo.enumeracoes.CategoriaDePacote;

@Entity
public class Pacote {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	@NotEmpty
	private String origem;
	
	@NotNull
	@NotEmpty
	private String destino;
	
	@NotNull
	@Enumerated(EnumType.STRING)
	private CategoriaDePacote categoria;

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
	
	public CategoriaDePacote getCategoria() {
		return categoria;
	}

	public void setCategoria(CategoriaDePacote categoria) {
		this.categoria = categoria;
	}
	
	
}
