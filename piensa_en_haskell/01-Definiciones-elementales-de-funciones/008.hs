{-
    1.8.1
    Rotacion de listas
-}

rota1 :: [a] -> [a]
rota1 xs = tail xs ++ [head xs]
-- tail da la cola de la lista
-- head da la cabeza de la lista


{-
    1.8.2
-}

rota :: Int -> [a] -> [a]
rota n xs = drop n xs ++ take n xs
-- drop n xs devuelve la lista xs sin los n primeros elementos
-- take n xs devuelve los n primeros elementos de la lista xs