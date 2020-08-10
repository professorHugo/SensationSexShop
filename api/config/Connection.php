<?php
/* Off Line */
$HOST   = 'localhost';
$USER   = 'root';
$PASS   = '';
$DBA    = 'sensationss';

$connection = mysqli_connect($HOST, $USER, $PASS, $DBA);

if($connection){
    return $connection;
    echo "Conectado";
}else{
    echo "Erro";
}

/* Deployed 
$HOST   = 'localhost';
$USER   = 'n2yco435_c2';
$PASS   = '8M6HJLM(md#EA+#k%{';
$DBA    = 'c2assessoria';

$connection = mysqli_connect($HOST, $USER, $PASS, $DBA);

if($connection){
    return $connection;
    echo "Conectado";
}else{
    echo "Erro";
}
/**/