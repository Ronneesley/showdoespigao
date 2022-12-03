<?php

	$min = 0;
	$max = 3;
	
	$sorteio = array("A" => 0, "B" => 0, "C" => 0, "D" => 0, "soma" => 0);
	
	$sorteio["A"] = rand($min,$max);
	$sorteio["B"] = rand($min, ($max - $sorteio["A"]));
	$sorteio["C"] = rand($min, ($max - ($sorteio["A"] + $sorteio["B"])));
	$sorteio["D"] = rand($min, ($max - ($sorteio["A"] + $sorteio["B"] + $sorteio["C"])));
	$sorteio["soma"] = ($sorteio["A"] + $sorteio["B"] + $sorteio["C"] + $sorteio["D"]);

	while($sorteio["soma"] < $max){
	  $sorteio["D"] +=  1;
	  $sorteio["soma"] = ($sorteio["A"] + $sorteio["B"] + $sorteio["C"] + $sorteio["D"]);
	}
	
	echo json_encode($sorteio);
?>