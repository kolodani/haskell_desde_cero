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

ejemplo2 = filter (<5) [1,5,7,2,3]

aquellosQueCumplen :: (a -> Bool) -> [a] -> [a]
aquellosQueCumplen p [] = []
aquellosQueCumplen p (x:xs) | p x = x : aquellosQueCumplen p xs
                            | otherwise = aquellosQueCumplen p xs

functionG :: Int -> Int
functionG x | x /= 0 = 5
            | otherwise = 0


-- N-uplas

primerElemento :: (a, b) -> a
primerElemento (x, _) = x

segundoElemento :: (a, b) -> b
segundoElemento (_, y) = y


-- Conjuncion, disyuncion y cuantificacion

conjuncion :: [Bool] -> Bool
conjuncion [] = True
conjuncion (x:xs) = x && conjuncion xs

disyuncion :: [Bool] -> Bool
disyuncion [] = False
disyuncion (x:xs) = x || disyuncion xs

algun, todos :: (a -> Bool) -> [a] -> Bool
algun p = disyuncion . aplicafun p
todos p = conjuncion . aplicafun p

pertenece, noPertenece :: Eq a => a -> [a] -> Bool
pertenece = algun . (==)
noPertenece = todos . (/=)


-- plegados especiales foldr y foldl

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

sumaLaLista :: Num a => [a] -> a
sumaLaLista [] = 0
sumaLaLista (x:xs) = x + sumaLaLista xs

plegadoPorLaDerecha :: (a -> b -> b) -> b -> [a] -> b
plegadoPorLaDerecha f z [] = z
plegadoPorLaDerecha f z (x:xs) = f x (plegadoPorLaDerecha f z xs)

conjuncion1, disyuncion1 :: [Bool] -> Bool
conjuncion1 = plegadoPorLaDerecha (&&) True
disyuncion1 = plegadoPorLaDerecha (||) False

plegadoPorLaIzquierda :: (b -> a -> b) -> b -> [a] -> b
plegadoPorLaIzquierda f z [] = z
plegadoPorLaIzquierda f z (x:xs) = plegadoPorLaIzquierda f (f z x) xs

listaInversa :: [a] -> [a]
listaInversa = plegadoPorLaIzquierda (\xs x -> x:xs) []


-- teoria de tipos
divideEntre2 :: Fractional b => [b] -> [b]
divideEntre2 xs = map (\x -> x / 2) xs

data Entidades = A | B | C | D | E | F | G
                | H | I | J | K | L | M | N
                | O | P | Q | R | S | T | U
                | V | W | X | Y | Z | Inespecifico
    deriving (Eq, Bounded, Enum)

instance Show Entidades where
    show A = "A"; show B = "B"; show C = "C";
    show D = "D"; show E = "E"; show F = "F";
    show G = "G"; show H = "H"; show I = "I";
    show J = "J"; show K = "K"; show L = "L";
    show M = "M"; show N = "N"; show O = "O";
    show P = "P"; show Q = "Q"; show R = "R";
    show S = "S"; show T = "T"; show U = "U";
    show V = "V"; show W = "W"; show X = "X";
    show Y = "Y"; show Z = "Z"; show Inespecifico = "*"

entidades :: [Entidades]
entidades = [minBound .. maxBound]