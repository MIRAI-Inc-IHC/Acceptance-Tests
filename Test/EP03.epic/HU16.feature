Feature: HU16: Como familiar de una persona discapacitada, deseo agendar una cita con el profesional y horario elegido para que este atienda a mi familiar.
        Scenario: E01: El horario está disponible
        CA01: 
            Given el usuario se encuentra en el formulario de contratación
            When selecciona una fecha en la que el médico está disponible
            Then se agenda esa cita tanto en la cuenta del profesional como la del cliente
Examples:
    |          Opción                 |      sacar cita del médico elegido     |      seleccione una fecha disponible |                        
    |seleccione un horario disponible |    se acepta la transacción de la cita |     se agenda la cita al profesional |


Feature: HU16: Como familiar de una persona discapacitada, deseo agendar una cita con el profesional y horario elegido para que este atienda a mi familiar.
        Scenario: E02: El horario no está disponible
        CA02:
            Given el usuario se encuentra en el formulario de contratación
            When selecciona una fecha en la que el médico tiene agendada otra cita
            Then sale un mensaje que advierte que el horario seleccionado no se encuentra disponible
Examples:
    |          Opción             |   sacar cita del médico elegido |     selecciona una fecha ocupada          |                
    |seleccion un horario ocupado |        mensaje                  |     Ha ingresado un horario no disponible |     
