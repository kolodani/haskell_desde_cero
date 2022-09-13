{- 
En Haskell se escriben funciones en forma declarativa
-}
inRange :: Integer -> Integer -> Integer -> Bool
inRange min max x = x >= min && x <= max
{-
Tipos basicos
-}
x :: Int
x = 1

y :: Bool
y = True

z :: Float
z = 3.1415
{-
Funcion let
-}

inRange2 min max x =
    let in_lower_bound = x >= min
        in_upper_bound = x <= max
    in
        in_lower_bound && in_upper_bound
{-
Funcion where
-}
inRange3 min max x = ilb && iub
    where
        ilb = x >= min
        iub = x <= max
{-
Funcion if
-}
inRange4 min max x = 
    if ilb then iub else False
    where
        ilb = x >= min
        iub = x <= max
{-
Funcion infix
    son funciones que se escriben dentro del ghci
        ghci> :t (+)
        (+) :: Num a => a -> a -> a
        
    add a b = a + b
    add 10 20
    10 ´add´ 20    aqui agrego las comillas para que el operador que va al inicio pueda ir en el medio
-}
