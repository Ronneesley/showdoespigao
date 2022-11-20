<?php
	class Questao{
		public $id;
		public $descricao;
		public $opcoes = array();
		public $opcaoCorreta;
		public $nivel;
	}

	class Opcao{
		public $id;
		public $descricao;
		public $questao = null;
	}

	function getQuestoes(){
		$ques1 = new Questao();
		$ques1->id = 1;
		$ques1->descricao = "Quem descobriu o Brasil?";
		$ques1->nivel = 1;

		$opc1 = new Opcao();
		$opc1->id = 1;
		$opc1->descricao = "Joao Pedro";
		$opc1->questao = $ques1;

		$opc2 = new Opcao();
		$opc2->id = 2;
		$opc2->descricao = "Lucas Ferreira";
		$opc2->questao = $ques1;

		$opc3 = new Opcao();
		$opc3->id = 3;
		$opc3->descricao = "Tiradentes";
		$opc3->questao = $ques1;

		$opc4 = new Opcao();
		$opc4->id = 4;
		$opc4->descricao = "Cabral";
		$opc4->questao = $ques1;

		$opcoes = array($opc1, $opc2, $opc3, $opc4);

		shuffle($opcoes);

		$ques1->opcoes = $opcoes;

		$ques1->opcaoCorreta = $opc4;

		$ques2 = new Questao();
		$ques2->id = 2;
		$ques2->descricao = "Qual o nome da rainha inglesa que reinou por 70 anos?";
		$ques2->nivel = 2;

		$opc1 = new Opcao();
		$opc1->id = 1;
		$opc1->descricao = "Vitoria";
		$opc1->questao = $ques2;

		$opc2 = new Opcao();
		$opc2->id = 2;
		$opc2->descricao = "Elisabete II";
		$opc2->questao = $ques2;

		$opc3 = new Opcao();
		$opc3->id = 3;
		$opc3->descricao = "Diana";
		$opc3->questao = $ques2;

		$opc4 = new Opcao();
		$opc4->id = 4;
		$opc4->descricao = "Isabel";
		$opc4->questao = $ques2;

		$opcoes = array($opc1, $opc2, $opc3, $opc4);

		shuffle($opcoes);

		$ques2->opcoes = $opcoes;

		$ques2->opcaoCorreta = $opc2;

		$questoes =  array($ques1, $ques2);

		return $questoes;
	}

	function verificaQuestao($request){
		$data = json_decode($request);
		$questoes = getQuestoes();
		foreach ($questoes as $ques) {
			if($ques->id == $data->idQuestao){
				if($ques->opcaoCorreta->id == $data->idResposta){
					$response = json_encode(array(
					   "opcao_correta" => $ques->opcaoCorreta->descricao,
					   "correta" => true
					));
					return $response;
				}
				else {
					$response = json_encode(array(
					   "opcao_correta" => $ques->opcaoCorreta->descricao,
					   "correta" => false
					));
					return $response;
				}				
			}
		}
		return "ERROR 400: questão não encontrada";
	}

	$request = json_encode(array(
		"idQuestao" => 1,
		"idResposta" => 4
	));
	echo "<h1>" . verificaQuestao($request) . "</h1>";

?>