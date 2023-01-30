{-
    1.17
    igualdad de 4 elementos
-}

dosIguales :: Eq a => a -> a -> Bool
dosIguales x y = x == y
tresIguales :: Eq a => a -> a -> a -> Bool
tresIguales x y z = dosIguales x y && dosIguales y z
cuatroIguales :: Eq a => a -> a -> a -> a -> Bool
cuatroIguales x y z w = tresIguales x y z && dosIguales x w