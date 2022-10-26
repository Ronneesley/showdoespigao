package br.com.showdoespigao.modelos;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "usuarios")
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotNull
    private String nome;
    
    @NotNull
    private String senha;
    
    @Column(name =  "chave_autenticacao_google")
    private String chaveAutenticacaoGoogle;
    
    @NotNull
    @OneToMany
    private Set<Pontuacao> pontuacoes;

    public Usuario() {
    }

    public Usuario(Long id, String nome, String senha, String chaveAutenticacaoGoogle) {
        this.id = id;
        this.nome = nome;
        this.senha = senha;
        this.chaveAutenticacaoGoogle = chaveAutenticacaoGoogle;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getChaveAutenticacaoGoogle() {
        return chaveAutenticacaoGoogle;
    }

    public void setChaveAutenticacaoGoogle(String chaveAutenticacaoGoogle) {
        this.chaveAutenticacaoGoogle = chaveAutenticacaoGoogle;
    }

    public Set<Pontuacao> getPontuacoes() {
        return pontuacoes;
    }

    public void setPontuacoes(Set<Pontuacao> pontuacoes) {
        this.pontuacoes = pontuacoes;
    }
}
