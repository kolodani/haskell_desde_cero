{-
    1.13
    Segmentos de una lista
-}

segmento :: Int -> Int -> [a] -> [a]
segmento m n xs = drop (m-1) (take n xs)
-- drop es la función que elimina los primeros m elementos de una lista
-- take es la función que toma los primeros n elementos de una lista
