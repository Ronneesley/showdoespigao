package com.milhao02.milhao_crud_op_qt_.service;

import com.milhao02.milhao_crud_op_qt_.entities.Questao;
import com.milhao02.milhao_crud_op_qt_.repository.Repository_Questao;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class Service_Questao {
    final Repository_Questao repository;
    public Service_Questao(Repository_Questao repository_q){
        this.repository = repository_q;
    }
    public Questao salvar(Questao questao){
        return repository.save(questao);
    }
    public List<Questao> getALL(){
        return repository.findAll();
    }
    public Questao getbyID(UUID id){
        Optional<Questao> questao = repository.findById(id);
        return questao.get();
    }

    public void delete(UUID id){
        delete(id);
    }
}
