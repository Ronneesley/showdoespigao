package br.com.showdoespigao.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.showdoespigao.modelos.Pontuacao;

public interface RepositorioPontuacao extends JpaRepository<Pontuacao, Long> {
}
