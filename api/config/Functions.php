<?php
####################################
#        FUNÇÕES DO SISTEMA        #
####################################

/* * ***************************
  GERAR RESUMOS
 * *************************** */
function Resumo($string, $words = '5000') {
    $string = strip_tags($string);
    $count = strlen($string);

    if ($count <= $words) {
        return $string;
    } else {
        $strpos = strrpos(substr($string, 0, $words), ' ');
        return substr($string, 0, $strpos);
    }
}

/********************
 * Excluir arquivos
 *******************/
function excluirArquivos($Arqivo){
    if( file_exists($Arqivo) ){
        unlink ( $Arqivo );
        return $Arqivo;
    }
}

/* * ***************************
  FORMATAR DATA
 * *************************** */
function FormDate($data) {
    $timestamp = explode(" ", $data);
    $getData = $timestamp[0];
    $getTime = $timestamp[1];

    $setData = explode('/', $getData);
    $dia = $setData[0];
    $mes = $setData[1];
    $ano = $setData[2];

    if (!$getTime):$getTime = date('H:i:s');
    endif;

    $resultado = $dia . '-' . $mes . '-' . $ano . ' ' . $getTime;

    return $resultado;
}
