Feature: Adivina

Scenario: Ingreso letras A y es exitoso
Given Pagina ingreso de letra
When Solicita letra "A"
Then Pantalla de ganador "Felicidades"


