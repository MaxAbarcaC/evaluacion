Feature: Realizacion de casos ingrsando nombre de usuario y contrase�a
Scenario: verificaion de ingresio de sesion
Given Abrir Chrome
When ingresa Username "max" y Password "admin"
Then inicia sesion
