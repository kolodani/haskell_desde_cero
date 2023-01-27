{-
    1.14
    Extremos de una lista
-}

extremos n xs = take n xs ++ drop (length xs - n) xs
-- take es la función que toma los primeros n elementos de una lista
-- drop es la función que elimina los primeros m elementos de una lista
-- length es la función que devuelve la longitud de una lista
-- ++ es la función que concatena dos listas