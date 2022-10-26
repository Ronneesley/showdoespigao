package br.com.showdoespigao.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.showdoespigao.modelos.Usuario;

public interface RepositorioUsuario extends JpaRepository<Usuario, Long> {
}
