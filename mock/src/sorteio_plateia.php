<?php
	$sorteioSimples = array("a" => 57, "b" => 10, "c" => 8, "d" => 25);

	echo json_encode($sorteioSimples);
	

  #criar uma lista pra receber os valores, preencher a lista especificando as posições, criar lógica caso os valores totais sejam menores que 100
	$min = 0;
	$max = 100;
	$sorteio = array("a" => 0, "b" => 0, "c" => 0, "d" => 0, "soma"=>0);
	$sorteio["a"] = rand($min,$max);
	$sorteio["b"] = rand($min, ($max - $sorteio["a"]));
	$sorteio["c"] = rand($min, ($max-($sorteio["a"]+$sorteio["b"])));
	$sorteio["d"] = rand($min, ($max-($sorteio["a"]+$sorteio["b"]+$sorteio["c"])));
	$sorteio["soma"] = ($sorteio["a"]+$sorteio["b"]+$sorteio["c"]+$sorteio["d"]);
	  #enquanto o total for menor q 100, a "d" recebe mais 1 e printa
	while($sorteio["soma"]<$max){
	  $sorteio["d"] +=  1;
	  $sorteio["soma"] = ($sorteio["a"]+$sorteio["b"]+$sorteio["c"]+$sorteio["d"]);
	  #echo json_encode($sorteio);
	}
	echo json_encode($sorteio);

?>
