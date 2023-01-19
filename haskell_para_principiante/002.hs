{-
FUNCIONES, CONDICIONALES, CONVERTIR NUMERO A CADENA Y VICEVERSA
-}

{-
creacion de funciones
-}

-- creacion de funciones con parametros
sumar a b = a + b

sumarCien x = x + 100

-- funcion con una condicion
parImpar x =
  if x `mod` 2 == 0
    then "Par"
    else "Impar"

-- si se hace una funcion con IF se debe poner el then y el else si o si

-- funcion para sacar el mayor de tres numeros > <
mayorTres a b c =
  if a >= b
    then
      if a >= c
        then "a es el mayor"
        else "c es el mayor"
    else
      if b >= c
        then "b es el mayor"
        else "c es el mayor"

-- otra forma de hacer la funcion anterior
mayorTres2 a b c =
  if a >= b && a >= c
    then a
    else
      if b >= a && b >= c
        then b
        else c

{-
en estos casos se muestra que la devolucion se hace directa, no hay un return
esto sucede porque haskell entiende que la funcion se iguala al resultado que en este caso
es el mayor de los tres
-}

-- funcion para seber si el valor x es divisible por el valor y
divisible x y = if x `mod` y == 0
  then "Divisible"
  else "No Divisible"
{-
las funciones devuelven todos datos del mismo tipo,
no se puede mezclar y devolver una cadena de texto, con numeros, y booleanos
-}
algo x = "usted envio el numero " ++ show x