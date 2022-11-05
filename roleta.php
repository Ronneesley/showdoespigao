<?php
function roleta($opA,$opB,$opC,$opD){
    $r = random_int(0,9);
    $op= array();
    $b= $opA+$opB;
    $c= $opA+$opB+$opC;
    for($i=0;$i<=$opA;$i++){
          $op[$i] = 1; 
        }    
    for($i=$opA;$i<=$b;$i++){
          $op[$i] = 2; 
        }
    for($i=$b;$i<=$c;$i++){
          $op[$i] = 3; 
        }
    for($i=$c;$i<=10;$i++){
          $op[$i] = 4; 
        }
    
    for ($i=0;$i<10;$i++){
        echo($op[$i]);
        echo("<br>");
        }    
    return $fim;
}
?>