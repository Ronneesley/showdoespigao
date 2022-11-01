package br.com.showdoespigao.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.showdoespigao.modelos.Usuario;

public interface RepositorioUsuario extends JpaRepository<Usuario, Long> {
	
	@Query(value = "SELECT * FROM USER WHERE (:q IS NULL OR (UPPER(name) LIKE UPPER(CONCAT('%', :q, '%'))))", nativeQuery = true)
	Page<Usuario> findByName(String q, Pageable page);
}
