{-
      2.9.1
      Aproximacion del limite
-}

aproxLimSeno :: (Enum a, Floating a) => a -> [a]
aproxLimSeno n = [sin(1/m)/(1/m) | m <- [1..n]]


{-
      2.9.2
-}

errorLimSeno :: (Enum a, Ord a, Floating a) => a -> a
errorLimSeno x = head [m | m <- [1..], abs(1-sin(1/m)/(1/m)) < x]