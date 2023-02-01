{-
      2.15
      Posiciones de un elemento en una lista
-}

posiciones :: Eq a => a -> [a] -> [Int]
posiciones x xs =
   [i | (x',i) <- zip xs [0..n], x == x']
   where n = length xs - 1

busca :: Eq a => a -> [(a,b)] -> [b]
busca c t = [v | (c', v) <- t, c == c']

posiciones' :: Eq a => a -> [a] -> [Int]
posiciones' x xs = busca x (zip xs [0..])