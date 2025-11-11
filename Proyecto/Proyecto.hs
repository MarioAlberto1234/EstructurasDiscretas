import Aux

{-- Dada una cadena de texto, regresar las frecuencias de cada uno de sus carácteres--}
frecuencia :: String -> [(Char, Int)]
frecuencia [] = []
frecuencia (x:xs) = (x, 1 + contar x xs) : frecuencia (quitar x xs)

{--Creacion de el arbol de Huffman dada una cadena de texto--}
huffman :: String -> ArbolHuffman
huffman = crearArbol . crearHoja . frecuencia