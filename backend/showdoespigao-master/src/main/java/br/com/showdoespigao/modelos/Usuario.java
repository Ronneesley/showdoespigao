package br.com.showdoespigao.modelos;

import javax.persistence.*;
import java.util.Set;

@Entity
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;
    private String senha;
    private String chaveAutenticacaoGoogle;
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
