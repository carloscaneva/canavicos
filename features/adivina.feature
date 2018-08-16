Feature: Adivina

Scenario: Ingreso letras A y es exitoso
Given Pagina ingreso de letra
When Solicita letra "A"
Then Pantalla de ganador "Felicidades"


Scenario: Ingreso varias letras B y es error
Given Pagina ingreso de letra
When Ingreso letra "B" 6 veces
Then Pantalla de perdedor "Over"

Scenario: Ingreso letra B y es error
Given Pagina ingreso de letra
When Ingresa letra "B"
Then Pantalla de ahorcado con "1"
