@tag
Feature: Comprobaremos el funcionamiento correcto en las operaciones y métodos de nuestro buffer acotado. No entraremos a comprobar 
el funcionamiento en situaciones problemáticas, estas se realizarán en otro feature. 
 
  @ScenarioBufferCrear
  Scenario: Como usuario quiero voy a crear un buffer
    Given Creo un buffer de tamaño 3
    And compruebo que la capacidad del buffer es 3 
    When introduzco el elemento 2
    Then y el tamaño del buffer debe ser 1 
    And y la capacidad del buffer es 2
 
  @ScenarioBufferGet
	Scenario: Como usuario quiero obtener un elemento del buffer
		Given Creo un buffer de tamaño 3
		When introduzco el elemento 7
		And introduzco el elemento 8
		And y la capacidad del buffer es 1 
		And y el tamaño del buffer debe ser 2
		Then al obtener un elemento este debe ser el 8
		
		@ScenarioBufferGetUpdate
	 Scenario: Como usuario quiero obtener un elemento y verificar que la capacidad y el tamaño se de este se actualizan
		Given Creo un buffer de tamaño 3
		When introduzco el elemento 7
		And introduzco el elemento 8
		And y la capacidad del buffer es 1 
		And y el tamaño del buffer debe ser 2
		Then al obtener un elemento este debe ser el 8
		And y la capacidad del buffer es 2
		And y el tamaño del buffer debe ser 1
		
		@ScenarioBufferFull
	 Scenario: Como usuario quiero verificar que puedo conocer cuando el buffer está lleno
		Given Creo un buffer de tamaño 2
		When introduzco el elemento 7
		And introduzco el elemento 8
		And y la capacidad del buffer es 0 
		And y el tamaño del buffer debe ser 2
		Then al verficar si está lleno esto debe ser True
		
		@ScenarioBufferEmpty
	 Scenario: Como usuario quiero verificar que puedo conocer cuando el buffer está vacío
		Given Creo un buffer de tamaño 2
		When introduzco el elemento 7
		And retiro un elemento
		Then al verficar si está vacío esto debe ser True
		
		@ScenarioBufferSize
	 Scenario: Como usuario quiero verificar que puedo conocer el tamaño del buffer
		Given Creo un buffer de tamaño 2
		When introduzco el elemento 7
		Then y el tamaño del buffer debe ser 1
		
		@ScenarioBufferGetPutFull_outline
  Scenario Outline: Como usuario quiero introducir y obtener unos elementos del buffer y posteriormente comprobar si está lleno
    Given Creo un buffer de tamaño 2
    When introduzco el elemento <Put1> 
    And introduzco el segundo elemento <Put2>
    Then al obtener un elemento este debe ser el <Get> 
		
		
    Examples: 
      | Put1  |  Put2 | Get     | 
      | 1     |     4 | 4       |
      | 0     |       | 0       |
      |       |     4 | 4       |
      | 2     |       | 2       |