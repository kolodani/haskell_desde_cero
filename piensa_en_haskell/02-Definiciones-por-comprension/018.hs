{-
      2.18
      Consulta de bases de datos
-}

personas :: [(String, String, Int, Int)]
personas = [("Cervantes", "Literatura", 1547, 1616),
            ("Velazquez", "Pintura", 1599, 1660),
            ("Picasso", "Pintura", 1881, 1973),
            ("Beethoven", "Musica", 1770, 1827),
            ("Poincare", "Ciencia", 1854, 1912),
            ("Quevedo", "Literatura", 1580,1654),
            ("Goya", "Pintura", 1746, 1828),
            ("Einstein", "Ciencia", 1879, 1955),
            ("Mozart", "Musica", 1756, 1791),
            ("Botticelli", "Pintura", 1445, 1510),
            ("Borromini", "Arquitectura", 1599,1667),
            ("Bach", "Musica", 1685, 1750)]

nombres :: [(String, String, Int, Int)] -> [String]
nombres bd = [x | (x, _, _, _) <- bd]


{-
      2.18.2
-}

musicos :: [(String, String, Int, Int)] -> [String]
musicos bd = [x | (x, m, _, _) <- bd, m == "Musica"]



{-
      2.18.3
-}

seleccion :: [(String, String, Int, Int)] -> String -> [String]
seleccion bd m = [x | (x, m', _, _) <- bd, m == m']


{-
      2.18.4
-}

musicos' :: [(String, String, Int, Int)] -> [String]
musicos' bd = seleccion bd "Musica"


{-
      2.18.5
-}

vivas :: [(String, String, Int, Int)] -> Int -> [String]
vivas ps a = [x | (x, _, a1, a2) <- ps, a1 <= a, a <= a2]