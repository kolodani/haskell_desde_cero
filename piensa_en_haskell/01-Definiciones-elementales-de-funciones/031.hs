{-
      1.31.1
      Forma reducida de un numero racional
-}

formaReducida :: Integral b => (b, b) -> (b, b)
formaReducida (a,b) = (a `div` c, b `div` c)
      where c = gcd a b
-- gcd es la funcion que calcula el maximo comun divisor de dos numeros


{-
      1.31.2
      Suma de dos numeros racionales
-}

sumaRacional :: Integral a => (a, a) -> (a, a) -> (a, a)
sumaRacional (a,b) (c,d) = formaReducida (a*d + b*c, b*d)


{-
      1.31.3
      Producto de dos numeros racionales
-}

productoRacional :: Integral b => (b, b) -> (b, b) -> (b, b)
productoRacional (a,b) (c,d) = formaReducida (a*c, b*d)


{-
      1.31.4
      Igualdad de numeros racionales
-}

igualdadRacional :: Integral b => (b, b) -> (b, b) -> Bool
igualdadRacional (a,b) (c,d) =
   formaReducida (a,b) == formaReducida (c,d)