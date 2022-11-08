package com.milhao02.milhao_crud_op_qt_.controller;

import com.milhao02.milhao_crud_op_qt_.entities.Opcao;
import com.milhao02.milhao_crud_op_qt_.service.Service_Opcao;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@RestController
@RequestMapping("/Opcao")
public class Controller_Opcao {
        final Service_Opcao service;
        public Controller_Opcao(Service_Opcao o_service){
            this.service = o_service;
        }
    @PostMapping
    @Transactional
    public ResponseEntity<Object> salva_opcao(@RequestBody Opcao opcao){
        return ResponseEntity.status(HttpStatus.CREATED).body(service.salvar(opcao));
    }
    @GetMapping
    public ResponseEntity<List<Opcao>> findAll(){
        return ResponseEntity.status(HttpStatus.OK).body(service.getALL());
    }
    @GetMapping("/{id}")
    public ResponseEntity<Object> findbyId(@PathVariable(name = "id") UUID id){
        Opcao obj = service.getbyID(id);
        return ResponseEntity.status(HttpStatus.OK).body(obj);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Object> delete(@PathVariable(value = "id")UUID id){
        Optional<Opcao> opcaoOptional = Optional.ofNullable(service.getbyID(id));
        if (!opcaoOptional.isPresent()){
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Opçao não enccontrado");
        }
        service.delete(id);
        return ResponseEntity.status(HttpStatus.OK).body("Opçao apagado com sucesso");
    }
}

