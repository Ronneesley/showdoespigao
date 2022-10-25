package br.com.showdoespigao.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import javax.persistence.Entity;

public interface Pontuacao extends JpaRepository<Pontuacao, Long> {
}
