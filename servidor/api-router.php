<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

require_once './libs/router.php';
require_once './controllers/ClothesController.php';


$router = new Router();

/* $url, $verb, $controller, $method */
$router->addRoute('productos', 'GET', 'ClothesController', 'conseguirProductos');


// ejecuta la ruta (sea cual sea)
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);

