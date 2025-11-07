import Aux

{-- Dada una cadena de texto, regresar las frecuencias de cada uno de sus carácteres--}
frecuencia :: String -> [(Char, Int)]
frecuencia [] = []
frecuencia (x:xs) = (x, 1 + contar x xs) : frecuencia (quitar x xs)