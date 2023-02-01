{-
      2.11
      Ternas pitagoricas
-}

pitagoricas :: Int -> [(Int, Int, Int)]
pitagoricas n = [(x, y, z) |  x <- [1..n],
                              y <- [1..n],
                              z <- [1..n],
                              x^2 + y^2 == z^2]


{-
      2.11.2
-}

numeroDePares :: (Int, Int, Int) -> Int
numeroDePares (x,y,z) = sum [1 | n <- [x,y,z], even n]


{-
      2.11.3
-}

conjetura :: Int -> Bool
conjetura n = and [odd (numeroDePares t) | t <- pitagoricas n]
