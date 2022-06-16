Feature: HU14: Como  Como familiar de una persona con discapacidad, deseo añadir filtros en la búsqueda de los médicos para que solo 
aparezcan los que cumplen con el criterio que solicito
	Scenario: E01: Hay resultados
	CA01:
        Given que el usuario se encuentra en el menú de filtros de búsqueda
        When selecciona las opciones que quiero que cumpla el especialista ="Traumatólogo" y sí existen médicos con esas características
        Then se muestran los profesionales de la salud ="Juan López García" que cumplan con lo solicitado
Examples:
|     Filtro  	 |     Especialista    |	
|  Traumatólogo	 |  Juan López García  |  

#------------------------------------------------------------------------------------------------------------------------------------------
Feature: HU14: Como  Como familiar de una persona con discapacidad, deseo añadir filtros en la búsqueda de los médicos para que solo 
aparezcan los que cumplen con el criterio que solicito
	Scenario: E02:No hay resultados
	CA02:
        Given que el usuario se encuentra en el menú de filtros de búsqueda
        When selecciona las opciones que quiero que cumpla el especialista ="Cardiólogo" y no existen médicos con esas características
        Then se muestra un mensaje ="No se encontraron resultados" que indique que no existen especialistas que cumplan los datos ingresados
Examples:
|     Filtro  	 |            Mensaje             |	
|   Cardiólogo	 |  No se encontraron resultados  |  

