{-
      2.12
      Problema 9 del Proyecto Euler
-}

ternasPitagoricas :: Int -> [(Int, Int, Int)]
ternasPitagoricas x = [(a, b, c) | a <- [1..x],
                                    b <- [a+1..x],
                                    c <- [x-a-b],
                                    a^2 + b^2 == c^2]


{-
      2.12.2
-}

euler9 :: Int
euler9 = a*b*c
      where (a,b,c) = head (ternasPitagoricas 1000)