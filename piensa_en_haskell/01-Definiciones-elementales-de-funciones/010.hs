{-
    1.10
    Reconocimiento de palindromos
-}

palindromo :: [Int] -> Bool
palindromo xs = xs == reverse xs
-- reverse es la funcion inversa de una lista