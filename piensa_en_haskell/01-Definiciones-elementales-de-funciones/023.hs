{-
    1.23.1
    Punto del plano
-}

cuadrante :: (Ord a, Num a) => (a, a) -> Int
cuadrante (x,y) | x > 0 && y > 0 = 1
                | x < 0 && y > 0 = 2
                | x < 0 && y < 0 = 3
                | x > 0 && y < 0 = 4


{-
    1.23.2
    Intercambio de coordenadas
-}

intercambia :: (b, a) -> (a, b)
intercambia (x,y) = (y,x)


{-
    1.23.3
    Punto simetrico
-}

simetricoH :: Num b => (a, b) -> (a, b)
simetricoH (x,y) = (x, -y)


{-
    1.23.4
    Distancia entre dos puntos
-}

distancia :: Floating a => (a, a) -> (a, a) -> a
distancia (x1,y1) (x2,y2) = sqrt ((x1-x2)^2 + (y1-y2)^2)
-- sqrt es la funcion raiz cuadrada


{-
    1.23.5
    Punto medio entre otros dos
-}

puntoMedio :: (Fractional a, Fractional b) => (a, b) -> (a, b) -> (a, b)
puntoMedio (x1,y1) (x2,y2) = ((x1+x2)/2, (y1+y2)/2)