-- en Haskell no existen los loops, se hace recursión
{-
recursion
-}
fac n =
    if n <= 1
        then 1
        else n * fac (n-1)
{-
guardas
-}
fac1 n
    | n <= 1 = 1
    | otherwise = n * fac1 (n-1)
{-
pattern matching
-}
isZero 0 = True
isZero _ = False
{-
accumulators
-}
fac2 n = aux n 1
    where
        aux n acc
            | n <= 1 = acc
            | otherwise = aux (n-1) (n*acc)