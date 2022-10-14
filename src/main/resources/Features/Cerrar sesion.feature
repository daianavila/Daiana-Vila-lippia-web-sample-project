Feature: Cerrar Sesion

Scenario: Cerrar seccion 
Given el usuario ingesa en el navegador 
When el usuario ingresa en la URL "http://practice.automationtesting.in/"
And hace click en el Menu y selecciona la opcion "Mi cuenta"
And el usuario completa nombre de usuario "Daiana Vila24" y contraseña "daiVILA19"
And hace click en el boton "Login"
And hace click en el enlace "Mi cuenta"
And hace click en el boton "Cerrar sesion"
Then el usuario sale con exito del sitio 