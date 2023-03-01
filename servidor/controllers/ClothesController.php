<?php
include_once 'models/ClothesModel.php';
include_once 'views/ClothesView.php';

class ClothesController{
    private $model;
    private $view;
    private $data;

    function __construct(){
        echo "checkeo";
        die();
        $this->model = new ClothesModel();
        $this->view = new ClothesView();
        $this->data = file_get_contents("php://input");
    }
    private function getData()
    {
        return json_decode($this->data);
    }
   
    public function conseguirProductos(){
        echo "Entro";
        die();
        $productos = $this->model->conseguirProductosDb();
        if (!empty($productos)){
            $this->view->respuesta($productos);
        }else{
            $this->view->respuesta("No se han encontrado productos", 404);
        }
    }
}