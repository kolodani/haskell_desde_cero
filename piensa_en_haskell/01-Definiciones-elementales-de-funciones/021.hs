{-
    1.21
    Modulo de un vector
-}

modulo :: Floating a => (a, a) -> a
modulo (x , y) = sqrt (x^2 + y^2)
-- sqrt es la funcion que calcula la raiz cuadrada