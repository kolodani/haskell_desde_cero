{-
    1.12
    Finales de una lista
-}

finales :: Int -> [a] -> [a]
finales n xs = drop (length xs - n) xs
-- drop es la funcion que elimina los n primeros elementos de una lista
-- length es la funcion que devuelve la longitud de una lista