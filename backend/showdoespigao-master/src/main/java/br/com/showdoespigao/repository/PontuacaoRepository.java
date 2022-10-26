package br.com.showdoespigao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.showdoespigao.modelos.Pontuacao;

@Repository
public interface PontuacaoRepository extends JpaRepository<Pontuacao, Long> {
}
