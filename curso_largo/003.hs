import Data.List

{-
-- listas
[1,2,3,4,5] :: [Integer]
-- los elementos de una lista siempre son del mismo elemento
-- hay dos constructores de listas
-- [] es el constructor de listas vacias
-- x:xs es el constructor de listas no vacias
-}
{-
-- generador de lista
-}
asc :: Int -> Int -> [Int]
asc n m
    | m < n = []
    | m == n = [m]
    | m > n = n : asc (n+1) m
{-
-- funciones en listas
-- para usarlas hay que importar Data.List
-- se puesde importar en ghci con :m + Data.List
-- o en el archivo con import Data.List
-}
{-
-- funciones head y tail
-- head toma la cabeza de una lista
-- tail toma la cola de una lista
-}
head :: [a] -> a
head [1,2,3,4,5] -- 1

tail :: [a] -> [a]
tail [1,2,3,4,5] -- [2,3,4,5]
{-
-- funcion null
-}
null :: [a] -> Bool
null [] -- True

null [1,2,3,4,5] -- False
{-
-- funciones en listas de buleanos
-}
and :: [Bool] -> Bool
and [True, False, True] -- False

or :: [Bool] -> Bool
or [True, False, True] -- True

{-
-- comprension de listas
-}
[2*x | x <- [1,2,3] ] -- [2,4,6]
[2*x | x <- [1,2,3], x > 1] -- [4,6]
[2*x | x <- [1,2,3], x > 1, x < 3] -- [4]

[ (x,y) | x <- [1,2,3], y <- ['a','b'] ] -- [(1,'a'),(1,'b'),(2,'a'),(2,'b'),(3,'a'),(3,'b')]
{-
-- lista de patrones
-}
sum :: [Int] -> Int
sum [] = 0
sum (x:xs) = x + sum xs

evens :: [Int] -> [Int]
evens [] = []
evens (x:xs)
    | mod x 2 == 0 = x : evens xs
    | otherwise = evens xs

{-
-- tuplas
-}
(1,2) :: (Integer, Integer)

fst :: (a,b) -> a
fst (x,_) = x

snd :: (a,b) -> b
snd (_,y) = y

let (x,y) = (1,2) in x -- 1

addTuples :: [(Int,Int)] -> [Int]
addTuples xs = [ x+y | (x,y) <- xs ]

addTuples [(1,2),(2,3),(100,100)] -- [3,5,200]
