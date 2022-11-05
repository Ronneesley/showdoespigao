package com.example.showdoespigao.model;

public class Opcao {
    private Long id;
    private Questao questao;
    private String descricao;

    public Opcao(){

    }

    public Opcao(Long id, Questao questao, String descricao) {
        this.id = id;
        this.questao = questao;
        this.descricao = descricao;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Questao getQuestao() {
        return questao;
    }

    public void setQuestao(Questao questao) {
        this.questao = questao;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
