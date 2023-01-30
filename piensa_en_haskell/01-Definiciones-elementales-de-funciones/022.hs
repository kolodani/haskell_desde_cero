{-
    1.22
    Rectangulo de area maxima
-}

mayorRectangulo :: (Ord b, Num b) => (b, b) -> (b, b) -> (b, b)
mayorRectangulo (a,b) (c,d) | a*b > c * d = (a,b)
                            | otherwise = (c,d)