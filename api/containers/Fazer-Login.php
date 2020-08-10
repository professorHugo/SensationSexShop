<?php
    $emailLogin = $_POST['email'];
    $senhaLogin = md5($_POST['password']);

    $QueryBuscarSenha = "SELECT * FROM auth_senhas WHERE md5_senha = '$senhaLogin'";
    $ExeQrByscarSenha = mysqli_query($connection, $QueryBuscarSenha);
    $ResQrBuscarSenha = mysqli_num_rows($ExeQrByscarSenha);

    if($ResQrBuscarSenha >= 1){
        while($ResQrSenha = mysqli_fetch_assoc($ExeQrByscarSenha)){
            $senha_id = $ResQrSenha['id_senha'];
            $QueryLogarUsuario = "
                SELECT * FROM tb_usuarios 
                WHERE email_usuario = '$emailLogin' AND senha_usuario = '$senha_id'
            ";
            $ExeQrLogarUsuario = mysqli_query($connection, $QueryLogarUsuario);
            $ResQrLogarUsuario = mysqli_num_rows($ExeQrLogarUsuario);

            if($ResQrLogarUsuario >= 1){
                while($DadosUsuario = mysqli_fetch_assoc($ExeQrLogarUsuario)){
                    $_SESSION['LOGIN'] = $DadosUsuario;
                }
            }
        }
    }else{
        
    }

?>