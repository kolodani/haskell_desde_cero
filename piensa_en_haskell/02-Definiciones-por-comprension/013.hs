{-
      2.13
      Producto escalar
-}

productoEscalar :: [Int] -> [Int] -> Int
productoEscalar xs ys = sum [x*y | (x,y) <- zip xs ys]
-- zip es una función que toma dos listas y devuelve una lista de pares