package com.example.showdoespigao.model;

public class Opcoes {
    private Long id;
    private String questao;
    private String descricao;

    public Opcoes(){

    }

    public Opcoes(Long id, String questao, String descricao) {
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

    public String getQuestao() {
        return questao;
    }

    public void setQuestao(String questao) {
        this.questao = questao;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
