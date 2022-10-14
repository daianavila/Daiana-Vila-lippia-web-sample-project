Feature: Login 

Scenario Outline: El cliente que previamente se había registrado ingresa a la plataforma exitosamente 
Given el usuario ingesa en el navegador 
When el usuario ingresa en la URL "http://practice.automationtesting.in/"
And hace click en el Menu y selecciona la opcion "Mi cuenta"
And el usuario completa <Dirección de correo electrónico> y <contraseña>
And hace click en el boton "Login"
Then el usuario visualiza la pantalla de "Home"

Examples:
 
|Direccion de correo electronico	|contraseña		|
|daiana.vila@crowdaronline.completa	|daiVILA2		|


Scenario Outline: El cliente realiza el login con usuario o contraseña incorrecto
Given el usuario ingesa en el navegador 
When el usuario ingresa en la URL "http://practice.automationtesting.in/"
And hace click en el Menu y selecciona la opcion "Mi cuenta"
And el usuario completa los datos <Dirección de correo electrónico> y <contraseña>
And hace click en el boton "Login"
Then el usuario visualiza el error de login <mensaje>

Examples:
|Direccion de correo electronico	|contraseña		|mensaje										|	
|daiana.vila@crowdaronline.completa	|				|Error: Password is required.					|
|									|daiVILA2		|Error: Username is required.					|
