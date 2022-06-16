Feature: HU19: Como  profesional de la salud, deseo elegir los métodos de pago que utilizo para obtener mis remuneraciones de la mejor manera
	Scenario: E01: Ingreso correcto de datos
	CA01:
    CA01:
        Given que me encuentro en el formulario de métodos de pago
        When agrego un número de tarjeta ="1234 5231 7895 8844", fecha de vencimiento ="26/04" y CVV ="123" correctos
        Then saldrá un mensaje="Se agregó correctamente el metodo de pago" que confirme que se agregó correctamente el método de pago
Examples:
|   Número de tarjeta 	  |  Vencimiento    |	CVV   |  Mensaje                                   |
|  1234 5231 7895 8844	  |  26/04          |   123   |  Se agregó correctamente el metodo de pago |

Feature: HU19: Como  profesional de la salud, deseo elegir los métodos de pago que utilizo para obtener mis remuneraciones de la mejor manera
    Scenario: E02: Ingreso incorrecto de datos
    CA02:
        Given que me encuentro en el formulario de métodos de pago
        When agrego un número de tarjeta ="3234 8596 7895 8844" y fecha de vencimiento ="29/12" correctos, pero CVV="aaa" incorrecto
        Then saldrá un mensaje="El CVV ingresado es incorrecto" que advierte que hubo un error al agregar tarjeta
Examples:
|   Número de tarjeta 	  |  Vencimiento    |	CVV   |  Mensaje                        |
|  3234 8596 7895 8844	  |  29/12          |   aaa   |  El CVV ingresado es incorrecto |

    CA03:
            Given que me encuentro en el formulario de métodos de pago
            When agrego un número de tarjeta="1234 5231 7895 8844" y CVV="123" correctos, pero fecha de vencimiento="a4/09" incorrecta
            Then saldrá un mensaje="La fecha de vencimiento es incorrecta" que advierte que hubo un error al agregar tarjeta
Examples:
|   Número de tarjeta 	  |  Vencimiento    |	CVV   |  Mensaje                               |
|  1234 5231 7895 8844	  |  a4/09          |   aaa   |  La fecha de vencimiento es incorrecta |
    CA04:
            Given que me encuentro en el formulario de métodos de pago
            When agrego un CVV="123" y fecha de vencimiento="29/12" correctos, pero un número de tarjeta incorrecto="absd 123 456 6777"
            Then saldrá un mensaje="El número de tarjeta es incorrecto" que advierte que hubo un error al agregar tarjeta
Examples:
|   Número de tarjeta 	  |  Vencimiento    |	CVV   |  Mensaje                            |
|  absd 123 456 6777	  |  29/12          |   123   |  El número de tarjeta es incorrecto |
