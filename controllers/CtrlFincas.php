<?php
    include_once('../models/modeloFincas.php');

    $nombre = $_POST['nombre'];
    $propietario = $_POST['propietario'];
    $direccion = $_POST['direccion'];


    $finca = new Fincas();

    $finca->saveFincas($nombre,$propietario,$direccion);

    $fincas = $finca->showFincas();

    include_once('../views/fincas.php');
?>