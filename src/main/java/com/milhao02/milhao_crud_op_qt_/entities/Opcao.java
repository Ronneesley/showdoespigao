package com.milhao02.milhao_crud_op_qt_.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serial;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "tb_opcao")
public class Opcao {
    @Serial
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column
    private String descr;

    public Opcao() {
    }

    //Opção para Quetão
    @OneToMany(mappedBy = "opcao")
    @JsonIgnore
    List<Questao> correta = new ArrayList<>();
    public List<Questao> getCorreta(){return correta;}

    //Questao para Opção
    @ManyToOne
    @JoinColumn(name = "questao")
    private Questao questao;

    public Questao getQuestao() {
        return questao;
    }

    public void setQuestao(Questao questao) {
        this.questao = questao;
    }

    public Opcao(String descr) {
        this.descr = descr;
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


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Opcao)) return false;

        Opcao opcao = (Opcao) o;

        if (getId() != null ? !getId().equals(opcao.getId()) : opcao.getId() != null) return false;
        return getDescr() != null ? getDescr().equals(opcao.getDescr()) : opcao.getDescr() == null;
    }

    @Override
    public int hashCode() {
        int result = getId() != null ? getId().hashCode() : 0;
        result = 31 * result + (getDescr() != null ? getDescr().hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Opcao{" +
                "id=" + id +
                ", descr='" + descr + '\'' +
                '}';
    }
}
