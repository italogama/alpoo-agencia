package br.com.khayrus.agencia.modelo.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.khayrus.agencia.modelo.entidades.Viagem;

@Repository
public interface ViagemRepositorio extends CrudRepository<Viagem, Long>{
	
//	@Query(value="SELECT valor FROM tabela_valor where cd_origem = :pcd_origem and cd_destino = :pcd_destino")
//	public Pacote findValor(@Param("pcd_origem") String cdOrigem, @Param("pcd_destino") String cdDestino);
//	

}
