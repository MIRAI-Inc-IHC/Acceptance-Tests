Feature: HU25: Como familiar de una persona con discapacidad, deseo agregar una reseña al profesional que contraté para que otros usuarios sepan qué tan bueno es su servicio 
	Scenario: E01: Ingreso correcto de datos
    CA01:
        Given que me encuentro en el formulario de ingreso de reseñas
        When selecciono la cantidad de estrellas="3 estrellas" e ingreso un texto correcto ="Su atencion es excelente"
        Then se mostrará esta reseña con mi nombre="Camilo Alberto Montejo" en el apartado de calificaciones del profesional
Examples:
|   cantidad de estrellas 	  | texto                              |  nombre                 |
|  3 estrellas	              |  Su atencion es excelente          |  Camilo Alberto Montejo |

Feature: HU25: Como familiar de una persona con discapacidad, deseo agregar una reseña al profesional que contraté para que otros usuarios sepan qué tan bueno es su servicio
    Scenario: E02: Ingreso incorrecto de datos
    CA02:
        Given que me encuentro en el formulario de ingreso de reseñas
        When selecciono la cantidad de estrellas="5 estrellas" correcto, pero ingreso un texto ="Su atencion e#@#!2!@ excelente" con caracteres no permitidos
        Then saldrá un mensaje="El contenido de la reseña es incorrecto" que advierte que la reseña contiene caracteres no permitidos
         
Examples:
|   cantidad de estrellas 	  | texto                                   |  mensaje                                 |
|  5 estrellas	              |  Su atencion e#@#!2!@ excelent          |  El contenido de la reseña es incorrecto |

    CA03:
        Given que me encuentro en el formulario de ingreso de reseñas
        When ingreso un texto correcto ="Excelente servicio, 100% recomendado", pero no selecciono la cantidad de estrellas =" - "
        Then saldrá un mensaje="No selecciono el numero de estrellas" que advierte que no se ha agregado una calificación
           
Examples:
|   cantidad de estrellas 	  | texto                                          |  mensaje                              |
|  - estrellas	              |  Excelente servicio, 100% recomendado          |  No selecciono el numero de estrellas |
