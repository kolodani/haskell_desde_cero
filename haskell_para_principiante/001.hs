prueba = print "Hola Programador"

galleta = print "Elmo quiere una galleta"

peras = 1 + 2

{-
nunca se escriben sentencias como operaciones
no se puede escribir: 1 + 2
-}

manzanas = 7 + 3 - (2 * 4)

bananas = ((8 * 5) / 3 + 7 * (-3)) / (9 -2)

{-
lo numeros negativos se ponen entre parentesis sino el compilador no lo entiende
-}

-- operadores booleanos: True, False
blanco = True

{-
si ingreso en la terminal la palabra blanco, me devuelve true como lo asigne
pero si ingreso not blanco, me devuelve false
-}

-- operadores logicos: &&, ||, not
rojo = True

azul = False

amarillo = rojo && azul

anaranjado = rojo || azul

{-
creo dos variavle donde almaceno true y false, luego creo dos variables donde almaceno las operaciones logicas que hago
en el caso de && me da falso porque las dos variables son distintas
en el caso de || me da true porque al menos una de las dos variables es true
-}

-- operadores de comparacion: ==, /=, <, >, <=, >=
jorge = 5 == 5

andres = 5 /= 5

-- concatenacion de cadenas
cadena1 = "hola soy una cadena"

cadena2 = "random"

cadena3 = cadena1 ++ " " ++ cadena2

{-
la concatenacion de cadenas de caracteres se hace con el operador ++, no con el operador +
tampoco se puede sumar un numero a una cadena de caracteres, no es compatible
-}

-- funcion succ, es una funcion que da el succesor de un numero
numeroalgo = succ 7

otronumero = 7 + succ 1

-- funcion min, es una funcion que da el minimo de dos numeros
minimo = min 5 2
minimo2 = min 5 (min 2 3)

-- funcion max, es una funcion que da el maximo de dos numeros
maximo = max 6 3
maximo2 = max 8 (max 1 5)
maximo3 = max (-100) 9