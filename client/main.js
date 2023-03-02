"use strict";

async function mostrar(){
    const res = await fetch("http://localhost/clothes/api/productos");
    console.log(res);
    const productos = await res.json();
    console.log(productos);
    document.querySelector("#productos").innerHTML = `
    
    <h1>Nombre del producto: ${productos.name}</h1>
    <p>Precio: $ ${productos.price}</p>
    <img src="${productos.image}" alt=${productos.name}>
    
    `
}
mostrar();