<?php

require_once './libs/router.php';
require_once './controllers/ClothesController.php';
/* api\controllers\ClothesController.php */
/* api\controllers */

$router = new Router();

/* $url, $verb, $controller, $method */
$router->addRoute('api/productos', 'GET', 'ClothesController', 'conseguirProductos');


// ejecuta la ruta (sea cual sea)
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);

