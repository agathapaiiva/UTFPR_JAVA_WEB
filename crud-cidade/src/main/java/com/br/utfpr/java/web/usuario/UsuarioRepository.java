package com.br.utfpr.java.web.usuario;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UsuarioRepository extends JpaRepository<Usuario, Long>{

    public Usuario findByNome(String nome);
}
