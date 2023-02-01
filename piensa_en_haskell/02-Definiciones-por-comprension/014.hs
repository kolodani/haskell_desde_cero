{-
      2.14
      Suma de pares de elementos consecutivos
-}

sumaConsecutivos :: [Int] -> [Int]
sumaConsecutivos xs = [x+y | (x,y) <- zip xs (tail xs)]
-- tail es una función que toma una lista y devuelve una lista sin el primer elemento
-- zip es una función que toma dos listas y devuelve una lista de pares