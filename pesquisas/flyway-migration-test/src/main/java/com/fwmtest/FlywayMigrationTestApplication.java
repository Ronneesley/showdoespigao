package com.fwmtest;

import java.util.Set;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.fwmtest.model.Opcao;
import com.fwmtest.model.Questao;
import com.fwmtest.repository.QuestaoRepository;

@SpringBootApplication
public class FlywayMigrationTestApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(FlywayMigrationTestApplication.class, args);
		
	}
	
	@Bean
	CommandLineRunner comanCommandLineRunner(QuestaoRepository questaoRepository) {
		return args ->{

			Questao quest1 = new Questao();
			quest1.setDescricao("Uma das soluções de Big Data mais presentes no mercado é o Apache Spark. Quanto a essa framework, assinale a alternativa correta.");
			quest1.setNivel(1);
			Opcao op1 = new Opcao();
			op1.setDescricao("É de código fechado");
			op1.setQuestao(quest1);
			Opcao op2 = new Opcao();
			op2.setDescricao("Não possui um sistema gerenciador de arquivos próprio, dependendo de outras plataformas para isso, como o Hadoop");
			op2.setQuestao(quest1);
			Opcao op3 = new Opcao();
			op3.setDescricao("Não suporta processamento em tempo real");
			op3.setQuestao(quest1);
			Opcao op4 = new Opcao();
			op4.setDescricao("Suporta apenas SQL, mas não dá suporte ao HQL");
			op4.setQuestao(quest1);
			
			Set<Opcao> opcoes1 = Set.of(op1, op2, op3 ,op4);
			
			quest1.setOpcoes(opcoes1);
			quest1.setCorreta(op4);

			questaoRepository.save(quest1);
			quest1.setCorreta(op4);
			questaoRepository.save(quest1);
			
			Questao quest2 = new Questao();
			quest2.setNivel(2);
			quest2.setDescricao("Qual a opção que apresenta a técnica de levantamento de requisitos sociais e organizacionais, por meio da qual o analista é inserido no ambiente de trabalho que será analisado, sendo feitas observações do trabalho diário");
			op1 = new Opcao();
			op1.setDescricao("Workshop");
			op1.setQuestao(quest2);
			op2 = new Opcao();
			op2.setDescricao("Etnografia");
			op2.setQuestao(quest2);
			op3 = new Opcao();
			op3.setDescricao("Entrevista");
			op3.setQuestao(quest2);
			op4 = new Opcao();
			op4.setDescricao("Prototipagem");
			op4.setQuestao(quest2);
			
			Set<Opcao> opcoes2 = Set.of(op1, op2, op3 ,op4);

			quest2.setOpcoes(opcoes2);
			

			questaoRepository.save(quest2);
			quest2.setCorreta(op4);
			questaoRepository.save(quest2);
		};
		
	}

}
