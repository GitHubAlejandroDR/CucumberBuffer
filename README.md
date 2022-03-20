# CucumberBuffer

## Distribución de las features

En el proyecto CucumberBuffer hemos realizado una división de las pruebas en dos archivos features en los que cada uno de ellos a seguido el siguiente razonamiento:

- En el caso de FeatureBuffer_basics:
   
Hemos realizado las pruebas como un usuario que solicita unas operaciones de una forma correcta, es decir en las que los parámetros de entrada cumplen las propiedades de nuestro objeto. 

- Para FeatureBuffer_exceptions: 

En este caso hemos realizado pruebas desde el punto de vista de un usuario que no tiene en cuenta las propiedades del objeto y espera que en el caso de que estas no estén permitidas le lanze un aviso/excepción. 

## Utilización de la sintaxis Gherkin

Durante el desarrollo de las distantas features hemos las distintas opciones de sintaxis con los siguientes fines:

- @TAGS 

En la parte superior de cada Scenario he colocado su respectivo tag con el fin de identificar a estos como también para dar la posibilidad de ejecutarlos de forma independiente

- And

Con el fin de prolongar tanto los Given, When o Then he utilizado dicha sintaxis. Es de utilidad a la hora de explicar de una mejor forma el proceso de dicho Scenario.

- Background

Esta sintaxis no ha sido utilizada aunque en todas mis features se repitiese el primer paso o Given. El motivo de esto último es que esta sintaxis provoca que antes de que se ejecuten los Scenario lanza lo que se mantenga en su interior. 

- Scenarios outline

Este tipo de Scenario son muy utiles a la hora de lanzar pruebas con una lista de valores o 'Data tables'. 
