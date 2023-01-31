{-
      2.6
      Problema 1 del proyecto Euler
-}

euler1 :: Int -> Int
euler1 n = sum [x | x <- [1..n-1], multiplo x 3 || multiplo x 5]
   where multiplo x y = x `mod` y == 0
-- defino multiplo como la funcion que me dice si un numero es multiplo de otro
-- en este caso reviso si es divisible entre 3 o 5
-- si lo es lo guardo en la lista x
-- luego sumo todos los elementos de la lista x