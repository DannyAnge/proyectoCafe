<?php

    class Conectar{

        public function conexion(){
            $conexion = mysqli_connect('localhost','root','19199697tsoCD','cafe');
            return $conexion;
        }
    }
?>