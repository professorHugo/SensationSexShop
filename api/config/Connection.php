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
$USER   = 'n2yco435_sexshop';
$PASS   = 'FZ2x&s!98MX0';
$DBA    = 'n2yco435_sensationss';

$connection = mysqli_connect($HOST, $USER, $PASS, $DBA);

if($connection){
    return $connection;
    echo "Conectado";
}else{
    echo "Erro";
}
/**/