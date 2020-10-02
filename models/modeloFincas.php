<?php
    include_once('../db/conexion.php');

    class Fincas{
        private $db;
        private $listFincas;
        public function __construct(){
            $this->db = Conectar::conexion();
            $this->listFincas = array();
        }

        public function saveFincas($nombre, $propietario, $direccion){
            $cons = $this->db->query("INSERT INTO fincas VALUES(null, '$nombre','$propietario','$direccion')");

            if($cons){
                header('Location:../views/index.phtml');
            }else{
                echo 'error';
            }
        }

        public function showFincas(){
            $fincas = $this->db->query("SELECT * FROM fincas");

            while ($rows = $fincas->fetch_assoc()) {
                $this->listFincas[0]=$rows;
            }

            return $this->listFincas;
        }
    }
?>