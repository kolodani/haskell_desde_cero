{-
      1.30
      Area de un triangulo mediante la formula de Heron
-}

area :: Floating a => a -> a -> a -> a
area a b c = sqrt (s*(s-a)*(s-b)*(s-c))
      where s = (a+b+c)/2