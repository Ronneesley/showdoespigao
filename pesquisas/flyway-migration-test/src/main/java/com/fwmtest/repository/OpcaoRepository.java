package com.fwmtest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fwmtest.model.Opcao;

@Repository
public interface OpcaoRepository extends JpaRepository<Opcao, Long>{

}
