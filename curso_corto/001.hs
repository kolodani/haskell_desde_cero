module Test where

division :: Int -> Int -> Int
-- division es el nombre de la funcion
-- :: indica que la funcion va a ser del tipo siguiente
-- lo que hace esta funcion es, tomar un entero y tomar otro entero y devuelve otro entero
-- el ultimo valor siempre es el valor de retorno de la funcion

division x y = x `div` y
-- division x y = div x y es lo mismo pero es mas legible ponerlo en el medio

-- division toma dos argumentos que se llaman x e y
-- x es el primer argumento y y el segundo argumento
-- los argumentos no se pasan entre parentesis (similar a bash)
-- x es de tipo entero, y es de tipo entero
-- x 'div' y es el tipo de retorno


--funcion prefija
-- la funcion menos se escribe antes del operando
--  -(-2) es = 2

--funcion infija
-- la funcion suma se escribe entre los operandos
-- 2 + 2 es = 4

--funcion postfija
-- la funcion suma se escribe despues del operando
-- 2 cuadrado

--EN ESTE CASO HIZO A div UNA FUNCION INFIJA CON LAS COMILLAS, SINO ES PREFIJA SIN LAS COMILLAS

cuadrado :: Int -> Int
cuadrado x = x * x