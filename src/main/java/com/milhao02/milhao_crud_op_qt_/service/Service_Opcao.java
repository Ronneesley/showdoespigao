package com.milhao02.milhao_crud_op_qt_.service;


import com.milhao02.milhao_crud_op_qt_.entities.Opcao;
import com.milhao02.milhao_crud_op_qt_.entities.Questao;
import com.milhao02.milhao_crud_op_qt_.repository.Repository_Opcao;
import com.milhao02.milhao_crud_op_qt_.repository.Repository_Questao;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class Service_Opcao {
    final Repository_Opcao repository;
    public Service_Opcao(Repository_Opcao repository_o){
        this.repository = repository_o;
    }
    public Opcao salvar(Opcao opcao){
        return repository.save(opcao);
    }
    public List<Opcao> getALL(){
        return repository.findAll();
    }
    public Opcao getbyID(UUID id){
        Optional<Opcao> opcao = repository.findById(id);
        return opcao.get();
    }
    public void delete(UUID id){
        delete(id);
    }
}

