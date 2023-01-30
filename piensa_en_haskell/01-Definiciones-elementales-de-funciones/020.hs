{-
    1.20.1
    Disyuncion excluyente
-}

xor1 :: Bool -> Bool -> Bool
xor1 True True = False
xor1 True False = True
xor1 False True = True
xor1 False False = False



{-
    1.20.2
-}

xor2 :: Bool -> Bool -> Bool
xor2 True y = not y
xor2 False y = y


{-
    1.20.3
-}

xor3 x y = (x || y) && not (x && y)