package com.milhao02.milhao_crud_op_qt_.entities;


import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serial;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "tb_questao")
public class Questao {
    @Serial
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column
    private String descr;

    @Column
    private int nivel;

    public Questao() {
    }

    public Questao(String descr, int nivel) {
        this.descr = descr;
        this.nivel = nivel;
    }
    //Opção para Quetão
    @ManyToOne
    @JoinColumn(name = "correta")
    private Opcao opcao;

    //Questao para Opção
    @OneToMany(mappedBy = "questao")
    @JsonIgnore
    List<Opcao> questao = new ArrayList<>();
    public List<Opcao> getCorreta(){return questao;}

    public Opcao getOpcao() {
        return opcao;
    }

    public void setOpcao(Opcao opcao) {
        this.opcao = opcao;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Questao)) return false;

        Questao questao = (Questao) o;

        if (getNivel() != questao.getNivel()) return false;
        if (!getId().equals(questao.getId())) return false;
        return getDescr() != null ? getDescr().equals(questao.getDescr()) : questao.getDescr() == null;
    }

    @Override
    public int hashCode() {
        int result = getId().hashCode();
        result = 31 * result + (getDescr() != null ? getDescr().hashCode() : 0);
        result = 31 * result + getNivel();
        return result;
    }

    @Override
    public String toString() {
        return "Questao{" +
                "id=" + id +
                ", descr='" + descr + '\'' +
                ", nivel=" + nivel +
                '}';
    }
}
