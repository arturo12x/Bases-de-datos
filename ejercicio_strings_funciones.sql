--funciones
 select @@VERSION
 select USER_NAME()

 select SUBSTRING('buenas tardes',8,6)


 --convertir a string
 select str(123.456,7,3)

 --sobreescribir un string sobre otro
 select stuff('ABCDE',3,2,'OP')

 --muestra la longitud de un string
 select len('hola')

 ---muestra los caracateres de la tabla ascii
 select char(64)

 --hace un substring desde la izquierda
 select left ('buenos dias',8)

  --hace un substring desde la izquierda
 select right ('buenos dias',8)

 --convierte a minusculas
 select lower('HOLA ESTUDiante')

 
 --convierte a mayusculas
 select upper('estudiante')

 select ltrim ('               hola              ')


 
 select rtrim ('               hola              ')


 select REVERSE('hola')


 --busca texto en una posicion pero te dice la posicion
 select patindex('%Luis%','Jorge Luis Borges')

 select REPLICATE('hola',3)

 --funcion space concatena 15 espacios
 select 'hola'+SPACE(15)+'que tal'