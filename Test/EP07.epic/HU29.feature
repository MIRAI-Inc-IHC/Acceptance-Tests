Feature: HU29: Como usuario, deseo contar con opciones para trasladarme rápidamente al sector del Landing Page que deseo.
    Scenario: E01: Selección de opciones del menú de navegación
    CA01:
        Given que el usuario se encuentra en el Landing Page
        When selecciona la opción = "Inicio"
        Then se traslada al inicio de la página
Examples:
    |   opción   |   sector    |
    |   Inicio   |   Inicio    |

    CA02:
        Given que el usuario se encuentra en el Landing Page
        When selecciona la opción = "Conócenos"
        Then se traslada al sector de información de la empresa
Examples:
    |   opción      |   sector                       |
    |   Conócenos   |   Información de la empresa    |

    CA03:
        Given que el usuario se encuentra en el Landing Page
        When selecciona la opción = "Servicios"
        Then se traslada al sector que muestra los servicios brindados en la plataforma
Examples:
    |   opción      |   sector                 |
    |   Servicios   |   Servicios brindados    |

    CA04:
        Given que el usuario se encuentra en el Landing Page
        When selecciona la opción = "Contáctanos"
        Then se traslada al final de la página y muestra los canales de contacto
Examples:
    |   opción        |   sector                 |
    |   Contáctanos   |   Canales de contacto    |
