{-
    1.24.1
    Suma de dos Numeros complejos
-}

sumaComplejos :: (Num a, Num b) => (a, b) -> (a, b) -> (a, b)
sumaComplejos (a,b) (c,d) = (a+c, b+d)


{-
    1.24.2
    Producto de dos Numeros complejos
-}

productoComplejos :: Num b => (b, b) -> (b, b) -> (b, b)
productoComplejos (a,b) (c,d) = (a*c - b*d, a*d + b*c)


{-
    1.24.3
    Conjugado de un Numero complejo
-}

conjugado :: Num b => (a, b) -> (a, b)
conjugado (a,b) = (a, -b)