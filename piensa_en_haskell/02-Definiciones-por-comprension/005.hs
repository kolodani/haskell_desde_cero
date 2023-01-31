{-
      2.5.1
      Numeros abundantes
-}

divisores :: Int -> [Int]
divisores n = [x | x <- [1..n-1], n `mod` x == 0]
-- primero consigo los divisores de n

numeroAbundante :: Int -> Bool
numeroAbundante n = sum (divisores n) > n
-- luego sumo a los divisores de n
-- y si la suma es mayor que n entonces n es un numero abundante


{-
      2.5.2
-}

numerosAbundantesMenores :: Int -> [Int]
numerosAbundantesMenores n = [x | x <- [1..n], numeroAbundante x]
-- hago una lista de los numeros x que les aplico la funcion numeroAbundante


{-
      2.5.3
-}

todosPares :: Int -> Bool
todosPares n = and [even x | x <- numerosAbundantesMenores n]
-- creo una lista de todos los numeros abundantes a n
-- luego lo asigno a una lista x
-- por ultimo aplico la funcion even a cada elemento de la lista x
-- y si todos los elementos de la lista x son pares entonces todosPares es True
