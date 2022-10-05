package br.com.showdoespigao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.showdoespigao.modelos.Opcao;

@Repository
public interface OpcaoRepository extends JpaRepository<Opcao, Long>{

}
