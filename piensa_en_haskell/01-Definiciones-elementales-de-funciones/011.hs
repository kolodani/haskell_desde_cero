{-
    1.11
    Elementos interiores de una lista
-}

interior :: [a] -> [a]
interior xs = tail (init xs)
-- tail es la cola de una lista
-- init es la inicial de una lista