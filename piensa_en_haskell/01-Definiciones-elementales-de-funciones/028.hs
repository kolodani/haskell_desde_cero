{-
    1.28
    Numeros de raices de una ecuacion cuadratica
-}

numeroDeRaices :: (Ord a, Num p, Num a) => a -> a -> a -> p
numeroDeRaices a b c
  | discriminante > 0 = 2
  | discriminante == 0 = 1
  | otherwise = 0
  where
    discriminante = b ^ 2 - 4 * a * c