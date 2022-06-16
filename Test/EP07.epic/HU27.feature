Feature: HU27: Como administrador, deseo que se visualice lo que ofrece la plataforma al momento de ingresar a ella para que las personas la utilicen.
    Scenario: E01: Ingreso desde el buscador
    CA01:
        Given que el usuario se encuentra en un buscador
        When ingresa al dominio de DocSeeker
        Then se muestra la ventana del LandingPage
Examples:
    | buscador                                                                                                       | ventana                                   |
    | http://localhost:63342/Develop4/public/index.html?_ijt=54l7h2s8cllk04vve802i8r6os&_ij_reload=RELOAD_ON_SAVE    | LandingPage DocSeeker                     |
    
Feature: HU27: Como administrador, deseo que se visualice lo que ofrece la plataforma al momento de ingresar a ella para que las personas la utilicen.
    Scenario: E02: Ingreso desde el menú de Inicio
    CA02:
        Given que el usuario se encuentra en el menú principal de la aplicación de DocSeeker
        When selecciona la opción = "Más información"
        Then se desplega el LandingPage
Examples:
    | opción                  | ventana                   |
    | Más información         | LandingPage DocSeeker     |
