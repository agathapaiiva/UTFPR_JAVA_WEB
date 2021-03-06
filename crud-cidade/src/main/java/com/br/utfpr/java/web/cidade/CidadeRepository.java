package com.br.utfpr.java.web.cidade;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CidadeRepository extends JpaRepository<CidadeEntidade, Long>{
	
	public Optional<CidadeEntidade> findByNomeAndEstado(String nome, String estado);

}
