{-
    1.17
    igualdad de 4 elementos
-}

dosIguales x y = x == y
tresIguales x y z = dosIguales x y && dosIguales y z
cuatroIguales x y z w = tresIguales x y z && dosIguales x w