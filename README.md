<div id="header" align="center">
    <img src="https://user-images.githubusercontent.com/103594582/216783649-ccad0d96-8ca3-466f-bab8-bcf2a0e14b21.png" width="400" />
</div>

<div align="center">
    <h1> Proyecto final </h1>
    <h3> Tienda online con arquitectura de microservicios. </h3>
</div>
<br/>

## Índice
<ol>
    <li><a href="#1">Explicación del proyecto</a></li>
    <li><a href="https://github.com/GonzaloRando03/GonzaloShop_Frontend">Frontend</a></li>
    <li><a href="https://github.com/GonzaloRando03/GonzaloShop_ServerGraphQL">Servidor GraphQL</a></li>
    <li><a href="https://github.com/GonzaloRando03/GonzaloShop_User_Microservice">Microservicio de usuarios</a></li>
    <li><a href="https://github.com/GonzaloRando03/GonzaloShop_Product_Microservice">Microservicio de productos</a></li>
    <li><a href="https://github.com/GonzaloRando03/GonzaloShop_Buy_Microservice">Microservicio de compras</a></li>
    <li><a href="">Estructura de las bases de datos</a></li>
</ol>
NOTA: En el índice teneis los enlaces a los repositórios de cada parte del proyecto. En el readme.md de cada parte individual encontrareis más información como, explicación del código, capturas de pantalla, testing de la aplicación, etc.
<br/><br/>

<h2 id="1">1. Explicación del proyecto</h2>

El proyecto consta de una tienda online con un sistema de compra simulado. Puedes realizar acciones como crear usuarios y registrarte, añadir dinero a tu monedero, interactuar con los productos, aplicar filtros a tus búsquedas, valorar productos, añadirlos al carrito y posteriormente realizar pedidos.

La idea del proyecto es exprimir al máximo el potencial de los microservicios dando a ver que estos pueden ser muy diferentes entre sí y funcionar como si de una sola aplicación se tratase. Para hacer esto he usado cuatro lenguajes de programación diferentes y dos bases de datos, una MySQL y otra MongoDB.

La estructura del proyecto es la siguiente:
<br/>
<div align="center">
    <img src="https://user-images.githubusercontent.com/103594582/216785043-ef330fc5-06b0-4c79-bc43-aafa104bc950.png" width="500" />
</div>
<br/>
<br/>

   - El frontend está desarrollado con TypeScript y React.
   - El servidor GraphQL actua como intermediario entre el frontend y los microservicios.
   - El microservicio de compras está desarrollacon con PHP y Laravel, comparte la base de datos MySQL con el microservicio de usuarios.
   - El microservicio de usuarios está desarrollado con Python y Django, comparte la base de datos MySQL con el microservicio de compras.
   - El microservicio de productos está desarrollado con JavaScript y Node.js, usa la base de datos MongoDB.
   
   <h2>2. Frontend</h2>
