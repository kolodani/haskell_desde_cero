{-
      2.16
      Representacion densa de un polinomio representado dispersamente
-}

densa :: [Int] -> [(Int,Int)]
densa xs = [(x,y) | (x,y) <- zip [n-1, n-2 .. 0] xs, y /= 0]
      where n = length xs
-- length es la funcion que devuelve el numero de elementos de una lista
-- zip es la funcion que devuelve una lista de pares de elementos de dos listas