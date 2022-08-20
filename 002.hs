-- definicion de la funcion
division :: Int -> Int -> Int
division x y = x `div` y

-- evaluar la funcion
-- division 10 2

--ejemplo
-- x = f a b
-- y = c * d
-- z = x + y

-- f a b + c * d
-- x + c * d
-- x + y
-- z

--notacion
-- f(x)      =   f x
-- f(x,y)    =   f x y
-- f(g(x))   =   f (g x)
-- f(x,g(y)) =   f x (g y)
-- f(x)g(y)  =   f x * g y

-- la aplicacion asocia a la izquierda
-- f x (g y)
-- f x g y  -- esto esta mal --
-- PONER PARENTESIS DE MAS NO HACE MAL NI GENERA PROBLEMAS