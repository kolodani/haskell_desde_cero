{-
    1.18
    Propiedad triangular
-}

triangular :: (Ord a, Num a) => a -> a -> a -> Bool
triangular a b c = a + b >= c && a + c >= b && b + c >= a