Feature: HU28: Como administrador, deseo ofrecer distintos canales de comunicación para ayudar a usuarios con problemas que presenten al momento de utilizar el sitio web. 
	Scenario: E01: Ingreso de datos correcto
	CA01: 
        Given que el usuario se encuentra en el formulario de mensajes a DocSeeker
        When ingresa el asunto y mensaje correctos
        Then se envía el mensaje a la plataforma
Examples:
|   asunto                          |   mensaje                                                                  |
|   Residencia en zona peligrosa    |   Si vivo en una zona peligrosa, ¿podrán venir hasta aquí a atenderme?     |

Feature: HU28: Como administrador, deseo ofrecer distintos canales de comunicación para ayudar a usuarios con problemas que presenten al momento de utilizar el sitio web
    Scenario: E02: Ingreso de datos incorrecto
    CA02:
        Given que el usuario se encuentra en el formulario de mensajes a DocSeeker
        When ingresa el asunto correctamente
        But ingresa un mensaje con caracteres no permitidos
        Then se mostrará la advertencia = "Ha ingresado caracteres no permitidos en su mensaje"
Examples:
|   asunto                         |   mensaje                                                                     |   advertencia                                           |
|   Residencia en zona peligrosa   |   Si vivo % en una#zona $$ peligrosa, ¿podrán venir hasta aquí a atenderme?   |   Ha ingresado caracteres no permitidos en su mensaje   |

    CA03:
        Given que el usuario se encuentra en el formulario de mensajes a DocSeeker
        When ingresa el mensaje correctamente
        But ingresa el asunto con caracteres no permitidos
        Then se mostrará la advertencia = "Ha ingresado caracteres no permitidos en el asunto"
Examples:
|   asunto                               |   mensaje                                                                |   advertencia                                          |
|   Residencia && en %% zona peligrosa   |   Si vivo en una zona peligrosa, ¿podrán venir hasta aquí a atenderme?   |   Ha ingresado caracteres no permitidos en el asunto   |
