{-
      2.8.1
      Aproximacion del numero e
-}

aproxE :: (Enum a, Floating a) => a -> [a]
aproxE n = [(1+1/m)**m | m <- [1..n]]
-- una sucesion de numeros que se aproximan al numero de Euler


{-
      2.8.2
-}

errorAproxE :: (Enum a, Ord a, Floating a) => a -> a
errorAproxE x = head [m | m <- [1..], abs((exp 1) - (1+1/m)**m) < x]
-- exp 1 es el numero de Euler
-- luego le resto la aproximacion y si es menor que x,
-- entonces es el error que quiero
-- luego aplico la funcion abs para que no me de negativos
-- y luego busco el primer elemento de la lista
-- que cumpla con la condicion con la funcion head


{-
      2.8.3
-}

aproxE' :: (Enum a, Fractional a) => a -> a
aproxE' n = 1 + sum [1 / factorial k | k <- [1..n]]

factorial :: (Num a, Enum a) => a -> a
factorial n = product [1..n]

-- primero calculo el factorial un numero con la funcion factorial
-- luego calculo la suma de los factoriales de 1 hasta n
-- y luego le sumo 1


{-
      2.8.4
-}

e :: Double
e = 2.71828459

-- el numero de Euler

{-
      2.8.5
-}

errorE' :: Double -> Double
errorE' x = head [n | n <- [0..], abs(aproxE' n - e) < x]

-- calculo el error de la aproximacion de e
-- con la funcion aproxE' y el numero de Euler
-- y luego busco el primer elemento de la lista
-- que cumpla con la condicion con la funcion head
