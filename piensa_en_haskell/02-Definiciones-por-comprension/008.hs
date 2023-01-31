{-
      2.8.1
      Aproximacion del numero e
-}

aproxE :: (Enum a, Floating a) => a -> [a]
aproxE n = [(1+1/m)**m | m <- [1..n]]
-- una sucesion de numeros que se aproximan al numero de Euler
