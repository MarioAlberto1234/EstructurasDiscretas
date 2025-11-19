import Aux

{-- Dada una cadena de texto, regresar las frecuencias de cada uno de sus carácteres--}
frecuencia :: String -> [(Char, Int)]
frecuencia [] = []
frecuencia (x:xs) = (x, 1 + contar x xs) : frecuencia (quitar x xs)

{--Creacion de el arbol de Huffman dada una cadena de texto--}
huffman :: String -> ArbolHuffman
huffman = crearArbol . crearHoja . frecuencia

{--Algoritmo para codificar y comprimir una cadena de texto--}
comprimir :: String -> (ArbolHuffman, String)
comprimir xs =
    let freqs      = obtenerFrecuencias xs
        hojas      = crearHoja freqs
        arbol      = crearArbol hojas
        tabla      = codigos arbol
        comprimido = codificar xs tabla
    in (arbol, comprimido)

{--Algoritmo para decoficar un cadena de texto ya comprimida--}
decodificar :: ArbolHuffman -> String -> String
decodificar _ [] = ""
decodificar arbol bits =
    let (c, resto) = decodificarAux arbol bits
    in c : decodificar arbol resto

