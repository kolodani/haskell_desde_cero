module Test where

doble :: Int -> Int
doble n = 2 * n

-- la funcion cuad calcula el cuaadrado de un valor
-- n es el argumento a cuadruplicar
cuad :: Int -> Int
cuad n = doble (doble n)

{-
la funcion cuad calcula el cuaadrado de un valor
esta version de la funcion es un poco mas eficiente que
la cuad original yua que no requiere de llamar dos veces a la funcion doble

n es el argumento a cuadruplicar
-}
cuad' :: Int -> Int
cuad' n = 4 * n

triple :: Int -> Int
triple n = 3 * n