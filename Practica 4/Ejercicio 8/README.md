# Readme del ejercicio 8

[![n|Solid](https://www.sitepoint.com/wp-content/themes/sitepoint/assets/images/icon.ruby.png)](https://drive.google.com/drive/folders/0B9i653xip8FVZ0JoYTc4M25TbDg?usp=sharing)




## Jugando al Ahorcado

Para probar el ejercicio hay que usar el `put ` para ir agregando letras, y la forma mas comoda de ver como los cambios van haciendo efecto es desde el navegador.
Tambien se puede probar que la redireccion que hace el `post '/' ` ande bien, pero a menos que manejen como pros el `curl ` no se les va a hacer tan fácil seguir el avance  desde ahi. Asi que pongan manualmente el Id de alguna de las palabras en el put, y recarguen la pagina de los detalles de la jugada en el navegador.

El comando para agregar una letra es el siguiente:
```sh
$ curl -X PUT -d intento=letra localhost:4567/partida/idPalabra
```

La url para ver el estado de la partida es la siguiente:

```sh
$ http://localhost:4567/partida/idPartida
```

### Algunas Notas de Pie

* No me bardeen el codigo malditos. *Shakes fist to the heavens\*
* Ese desastre que hay al principio de meter el hash adentro de un array para pasarlo adentro del param de la URL... En un principio fue necesario.. 
* Si lo pueden refactorizar para que les quede mas lindo, bienvenidos sean. 
* Si quieren saber porque hice eso preguntenmennnnn y les cuento.
* Y yo se que si lo ve el de la teoria me la do con mi propia mac. (tiene BANDA de if's)
* Y tiene un error de que si pones 2 veces la misma letra te descuenta una oportunidad y no se porque. jajaja
* peace out.

