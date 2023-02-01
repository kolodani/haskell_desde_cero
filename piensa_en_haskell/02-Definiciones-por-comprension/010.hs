{-
      2.10
      Calculo del numero
-}

calculaPi :: (Enum a, Floating a) => a -> a
calculaPi n = 4 * sum [(-1)**x/(2*x+1) | x <- [0..n]]