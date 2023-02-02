{-
      2.17
      Producto cartesiano
-}

pares' :: [a] -> [b] -> [(a,b)]
pares' xs ys = concat [[(x,y) | y <- ys] | x <- xs]
-- concat es la funcion que concatena listas de listas en una sola lista
