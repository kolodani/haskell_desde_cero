{-
      2.2
      Listas con un elmento replicado
-}

replica :: Int -> a -> [a]
replica n x = [x | _ <- [1..n]]
-- _ es una variable anonima que no se usa
-- [1..n] es una lista de numeros del 1 al n
-- x es el elemento que se repite
-- [x | _ <- [1..n]] es una lista de n elementos x
