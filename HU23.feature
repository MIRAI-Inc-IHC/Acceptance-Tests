Feature: HU23: Como familiar de una persona discapacitada, deseo visualizar la radiografía implementada en mi pariente.
        Scenario: La radiografía está disponible
   CA01:
       Given el usuario se encuentra en su historial médico 
       When Selecciona la opción Extended reality
       Then La radiografía realizada a la zona verificada al paciente se puede visualizar 
Examples:
| Opción | Ver  Extended Reality paciente| Se visualiza la radiografía implementada al paciente|

Feature: HU23: Como familiar de una persona discapacitada, deseo visualizar la radiografía implementada en mi pariente.
       Scenario: La radiografía no está disponible
  CA02:
       Given el usuario se encuentra en su historial médico 
       When Selecciona la opción Extended reality
       Then sale un mensaje que advierte que la radiografía aún no está disponible
Examples:
| Opción  | Ver Extended Reality paciente     |
| Mensaje | No está disponible la radiografía |
