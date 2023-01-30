{-
    1.27
    Mayor numero de 2 cifras con dos digitos dados
-}

numeroMayor :: (Ord a, Num a) => a -> a -> a
numeroMayor x y = if x > y then x * 10 + y else y * 10 + x

numeroMayor2 :: (Num a, Ord a) => a -> a -> a
numeroMayor2 x y = a*10 + b
    where
        a = max x y
        b = min x y