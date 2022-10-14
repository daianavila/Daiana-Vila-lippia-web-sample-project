Feature: Register

Scenario Outline: Registro de un nuevo usuario exitoso
Given el usuario ingesa en el navegador 
When el usuario ingresa en la URL "http://practice.automationtesting.in/"
And hace click en el Menu y selecciona la opcion "Mi cuenta"
And el usuario completa <Dirección de correo electrónico> y <contraseña>
And hace click en el boton "Registrarse"
Then el usuario se registra exitosamente y visualiza la pagina "Home"

Examples:
|Direccion de correo electronico	|contraseña		|
|daiana.vila@crowdaronline.completa	|daiVILA2		|


Scenario Outline: Registro de un nuevo usuario fallido
Given el usuario ingesa en el navegador 
When el usuario ingresa en la URL "http://practice.automationtesting.in/"
And hace click en el Menu y selecciona la opcion "Mi cuenta"
And el usuario completa los datos <Dirección de correo electrónico> y <contraseña>
And hace click en el boton "Registrarse"
Then el usuario visualiza el error de registro <mensaje>

Examples:
|Direccion de correo electronico	|contraseña		|mensaje										|	
|daiana.vila@crowdaronline.completa	|da				|Error: Please provide a valid email address.	|
|dgheyrufh							|daiVILA2		|Error: Please provide a valid email address.	|