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
@Column(name = "resposta_correta")
public class respostaCorreta {
    @Id
	private Long id;
	
	@OneToMany
	private respostaCorreta opcoes;

    
	
	public Questao() {
	}

	public Questao(Long id, respostaCorreta respostaCorreta) {
		this.id = id;
		this.opcoes = respostaCorreta;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	public respostaCorreta getOpcoes() {
		return opcoes;
	}

	public void setrespostaCorreta(respostaCorreta opcoes) {
		this.respostaCorreta = opcoes;
	}

}


	
	