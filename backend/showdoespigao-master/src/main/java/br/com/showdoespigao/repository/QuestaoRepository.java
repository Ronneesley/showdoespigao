package br.com.showdoespigao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.showdoespigao.modelos.Questao;

@Repository
public interface QuestaoRepository extends JpaRepository<Questao, Long>{

}
