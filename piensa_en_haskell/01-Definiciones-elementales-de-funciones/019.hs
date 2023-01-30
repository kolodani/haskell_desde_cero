{-
    1.19
    Division Segura
-}

divisionSegura :: (Eq p, Fractional p) => p -> p -> p
divisionSegura _ 0 = 9999
divisionSegura x y = x / y