<?php

class ClothesModel{
    private $db;

    function __construct(){
        $this->db = new PDO("mysql:host=localhost;" . "dbname=db_clothes;" . "charset=utf8", "root", "");
    }

    public function conseguirProductosDb(){
        $sentencia = $this->db->prepare("SELECT * FROM clothes");
        var_dump($sentencia);
        $sentencia->execute();
        $productos = $sentencia->fetch(PDO::FETCH_OBJ);
        return $productos;
    }
}