{-
    1.26
    Permutacion ciclica de una lista
-}

ciclo :: [a] -> [a]
ciclo [] = []
ciclo xs = last xs : init xs
-- last es la funcion que devuelve el ultimo elemento de una lista
-- init es la funcion que devuelve todos los elementos de una lista excepto el ultimo