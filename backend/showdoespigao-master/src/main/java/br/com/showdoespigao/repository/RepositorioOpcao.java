package br.com.showdoespigao.repository;

import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.showdoespigao.modelos.Opcao;
import br.com.showdoespigao.modelos.Questao;

@Repository
public interface RepositorioOpcao extends JpaRepository<Opcao, Long>{
	Set<Opcao> findByQuestao(Questao questao);
	Set<Opcao> findByDescricao(String descricao);
}
