package br.com.showdoespigao.modelos;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "pontuacoes")
public class Pontuacao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long pontuacao;
    
    @NotNull
    @ManyToOne
    private Usuario usuario;

    public Pontuacao() {
    }

    public Pontuacao(Long id, Long pontuacao, Usuario usuario) {
        this.id = id;
        this.pontuacao = pontuacao;
        this.usuario = usuario;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(Long pontuacao) {
        this.pontuacao = pontuacao;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
}