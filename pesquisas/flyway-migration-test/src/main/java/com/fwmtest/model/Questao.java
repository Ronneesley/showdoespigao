package com.fwmtest.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity(name= "questoes")
public class Questao {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String descricao;
	private Integer nivel;
	
	@OneToOne
	@JoinColumn(name = "correta")
	private Opcao correta;
	
	@OneToMany(mappedBy = "questao", cascade = CascadeType.ALL)
	private Set<Opcao> opcoes;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Integer getNivel() {
		return nivel;
	}

	public void setNivel(Integer nivel) {
		this.nivel = nivel;
	}

	public Set<Opcao> getOpcoes() {
		return opcoes;
	}

	public void setOpcoes(Set<Opcao> opcoes) {
		this.opcoes = opcoes;
	}

	public Opcao getCorreta() {
		return correta;
	}

	public void setCorreta(Opcao correta) {
		this.correta = correta;
	}

}
