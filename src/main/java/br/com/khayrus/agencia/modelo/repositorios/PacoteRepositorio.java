package br.com.khayrus.agencia.modelo.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.khayrus.agencia.modelo.entidades.Pacote;

@Repository
public interface PacoteRepositorio extends CrudRepository<Pacote, Long>{
	
	

}
