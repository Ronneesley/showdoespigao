package com.milhao02.milhao_crud_op_qt_.repository;

import com.milhao02.milhao_crud_op_qt_.entities.Questao;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;
@org.springframework.stereotype.Repository
public interface Repository_Questao extends JpaRepository<Questao, UUID> {
}
