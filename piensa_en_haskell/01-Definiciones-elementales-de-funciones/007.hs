{-
    1.7.1
    Disyuncion excluyente
-}

xor1 :: Bool -> Bool -> Bool
xor1 True True = False
xor1 True False = True
xor1 False True = True
xor1 False False = False

a = True
b = False


{-
    1.7.2
-}

xor2 :: Bool -> Bool -> Bool
xor2 True y = not y
xor2 False y = y


{-
    1.7.3
-}

xor3 :: Bool -> Bool -> Bool
xor3 x y = (x || y) && not (x && y)


{-
    1.7.4
-}

xor4 :: Bool -> Bool -> Bool
xor4 x y = x /= y