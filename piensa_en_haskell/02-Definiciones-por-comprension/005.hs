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
