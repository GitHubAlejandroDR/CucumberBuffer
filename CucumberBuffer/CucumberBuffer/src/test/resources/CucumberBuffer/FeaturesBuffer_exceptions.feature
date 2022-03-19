
@tag
Feature: Comprobaremos el funcionamiento del buffer en situaciones problemáticas o no permitidas. 
  
  @ScenarioBufferNeg
  Scenario: Como usuario quiero verficar que el sistema no me permite crear un buffer con tamaño negativo
    Given Quiero verificar el sistema
    When el tamaño del buffer es negativo
    Then creo un buffer con tamaño -1


  @ScenarioBufferVacíoException
  Scenario: Como usuario quiero verificar que el sistema no permite obtener elementos de un buffer vacío
    Given Creo un buffer de tamaño 1
    When introduzco el elemento 2
    And retiro un elemento
    Then si retiro otro lanza una excepción

  @ScenarioBufferLlenoException
  Scenario: Como usuario quiero verificar que el sistema no permite insertar elementos en un buffer lleno
    Given Creo un buffer de tamaño 1
    When introduzco el elemento 2
    Then si introduzco el 3 lanza una excepción
    
   @ScenarioBufferLLenoException_outline
   Scenario Outline: Como usuario quiero verificar que el sistema no permite insertar elementos en un buffer lleno independientemente del signo. 
     Given Creo un buffer de tamaño 1
     When introduzco el elemento <Put1>
     Then si introduzco el <Put2> lanza una excepción
	
    Examples: 
      | Put1  | Put2  | 
      | 0     |     3 | 
      | -9    |     7 |
      | -8    |    -4 | 

 