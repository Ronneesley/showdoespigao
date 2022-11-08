package com.milhao02.milhao_crud_op_qt_.controller;

import com.milhao02.milhao_crud_op_qt_.entities.Questao;
import com.milhao02.milhao_crud_op_qt_.service.Service_Questao;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@RestController
@RequestMapping("/Questao")
public class Controller_Questao {
        final Service_Questao service;
        public Controller_Questao(Service_Questao q_service){
            this.service = q_service;
        }
    @PostMapping
    @Transactional
    public ResponseEntity<Object> salva_opcao(@RequestBody Questao questao){
        return ResponseEntity.status(HttpStatus.CREATED).body(service.salvar(questao));
    }
    @GetMapping
    public ResponseEntity<List<Questao>> findAll(){
        return ResponseEntity.status(HttpStatus.OK).body(service.getALL());
    }
    @GetMapping("/{id}")
    public ResponseEntity<Object> findbyId(@PathVariable(name = "id") UUID id){
        Questao obj = service.getbyID(id);
        return ResponseEntity.status(HttpStatus.OK).body(obj);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Object> delete(@PathVariable(value = "id")UUID id){
        Optional<Questao> questaoOptional = Optional.ofNullable(service.getbyID(id));
        if (!questaoOptional.isPresent()){
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Questao não enccontrado");
        }
        service.delete(id);
        return ResponseEntity.status(HttpStatus.OK).body("Questao apagado com sucesso");
    }
}

