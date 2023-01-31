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


raizCuadradaEntera :: Int -> Int
raizCuadradaEntera n = truncate (sqrt (fromIntegral n))

circulo' :: Int -> Int
circulo' n = length [(x,y) | x <- [0..m], y <- [0..m], x^2 + y^2 < n^2]
   where m = raizCuadradaEntera n

-- la funcion fromIntegral toma un numero de un tipo numerico
-- y lo convierte en un numero de otro tipo numerico
-- en este caso lo convierte de Int a Float
-- sqrt toma un numero y devuelve su raiz cuadrada
-- truncate toma un numero y devuelve su parte entera

-- la funcion circulo' es la misma que la funcion circulo
-- pero en vez de tomar todos los numeros naturales hasta n
-- toma todos los numeros naturales hasta la raiz cuadrada de n
-- ya que si un numero es mayor que la raiz cuadrada de n
-- entonces su cuadrado tambien lo es
-- por lo tanto no es necesario revisar si el cuadrado de un numero
-- es menor que n, ya que si el numero es mayor que la raiz cuadrada
-- de n, entonces su cuadrado tambien lo es