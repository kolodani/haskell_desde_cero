{-
      2.7
      Numero de pares de naturales en un circulo
-}

circulo :: Int -> Int
circulo n = length [(x,y) | x <- [0..n], y <- [0..n], x^2 + y^2 < n^2]
-- un circulo posee un radio n y un centro en el origen
-- ahora tengo que encontrar los pares naturales que estan dentro del circulo
-- para eso uso la formula de la distancia entre dos puntos

-- tomo todos los pares de numeros naturales hasta n
-- luego reviso si la distancia entre esos dos puntos es menos o igual
-- al radio del circulo, osea si estan dentro del circulo
-- si lo estan los guardo en la lista
-- luego cuento la cantidad de elementos de la lista con length
-- que cuenta la cantidad de elementos de una lista