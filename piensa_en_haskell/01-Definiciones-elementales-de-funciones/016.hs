{-
    1.16.1
    Igualdad y diferencia de 3 elementos
-}

tresIguales :: Eq a => a -> a -> a -> Bool
tresIguales x y z = x == y && y == z

{-
    1.16.2
-}

tresDiferentes :: Eq a => a -> a -> a -> Bool
tresDiferentes x y z = x /= y && y /= z && x /= z