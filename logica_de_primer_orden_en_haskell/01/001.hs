{-
  INTRODUCCION A HASKELL
-}

cuadrado :: Int -> Int
cuadrado x = x * x

raizCuadrada :: Int -> Int
raizCuadrada x = last [y | y <- [1..x], y * y <= x]

divisiblePor :: Int -> Int -> Bool
divisiblePor x y = x `rem` y == 0

contieneLaLetra :: String -> Char -> Bool
contieneLaLetra [] _ = False
contieneLaLetra (x:xs) y = x == y || contieneLaLetra xs y


-- comprension de listas
lista1 = [1,2,3,4,5,6,7,8,9,10]
lista2 = [1 .. 10]
lista3 = [ n | n <- [0 .. 10], even n]
lista4 = [ n | n <- [0 .. 100], n `mod` 5 == 0]
lista5 = [x | x <- ["daniel", "juan", "pedro"], x `contieneLaLetra` 'a']

variacionesR :: Int -> [a] -> [[a]]
variacionesR _ [] = [[]]
variacionesR 0 _ = [[]]
variacionesR k xs =
  [z:ys | z <- xs, ys <- variacionesR (k-1) xs]


-- funciones map y filter
aplicafun :: (a -> b) -> [a] -> [b]
aplicafun f [] = []
aplicafun f (x:xs) = f x : aplicafun f xs

ejemplo1 = map (`divisiblePor` 2) [1,2,3,4,5,6,7,8,9,10]