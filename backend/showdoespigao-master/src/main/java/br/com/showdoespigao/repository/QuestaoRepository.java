package br.com.showdoespigao.repository;

import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.showdoespigao.modelos.Questao;

@Repository
public interface QuestaoRepository extends JpaRepository<Questao, Long>{
	Set<Questao> findByDescricaoContains(String descricao);
	Set<Questao> findByNivel(Integer nivel);
}
