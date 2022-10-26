package br.com.showdoespigao.modelos;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.Tables;

import com.fasterxml.jackson.core.sym.Name;

@Entity
@Table(name = "questoes")
public class Questao {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
    @NotNull
	private String descricao;
    
    @NotNull
	private Integer nivel;
	
	@OneToMany
	private Set<Opcao> opcoes;
	
	public Questao() {
	}

	public Questao(Long id, String descricao, Integer nivel, Set<Opcao> opcaoCorreta) {
		this.id = id;
		this.descricao = descricao;
		this.nivel = nivel;
		this.opcoes = opcaoCorreta;
	}

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

}
