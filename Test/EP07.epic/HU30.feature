Feature: HU30: Como usuario, deseo contar con accesos rápidos a las redes de la plataforma para entrar en contacto con ella.
    Scenario: E01: Selección de una de las redes sociales
    CA01:
        Given que el usuario se encuentra en el apartado de "Contáctanos" del Landing Page
        When selecciona la opción = "Facebook"
        Then se le redirige a la página de Facebook de la empresa
Examples:
    |   opción     |   ventana        |
    |   Facebook   |   Facebook.com   |

    CA02:
        Given que el usuario se encuentra en el apartado de "Contáctanos" del Landing Page
        When selecciona la opción = "Twitter"
        Then se le redirige a la página de Twitter de la empresa
Examples:
    |   opción     |   ventana        |
    |   Twitter    |   Twitter.com    |
    
    CA03:
        Given que el usuario se encuentra en el apartado de "Contáctanos" del Landing Page
        When selecciona la opción = "Instagram"
        Then se le redirige a la página de Instagram de la empresa
Examples:
    |   opción       |   ventana          |
    |   Instagram    |   Instagram.com    |
    
    CA04:
        Given que el usuario se encuentra en el apartado de "Contáctanos" del Landing Page
        When selecciona la opción = "LinkedIn"
        Then se le redirige a la página de LinkedIn de la empresa
Examples:
    |   opción       |   ventana          |
    |   LinkedIn     |   LinkedIn.com     |
