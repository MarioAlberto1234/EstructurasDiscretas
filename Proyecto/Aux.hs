module Aux where
data ArbolHuffman = Hoja Char | Nodo ArbolHuffman ArbolHuffman | Vacio deriving (Show)

{--Contar cuantas veces aparece un caracter en la cadena--}
contar :: Char -> String -> Int
contar _ [] = 0
contar c (y:ys)
  | c == y    = 1 + contar c ys
  | otherwise = contar c ys

{--Eliminar todas las ocurrencias de un caracter en una cadena--}
quitar :: Char -> String -> String
quitar _ [] = []
quitar c (y:ys)
  | c == y    = quitar c ys
  | otherwise = y : quitar c ys

{--Convertir frecuencias en hojas--}
crearHoja :: [(Char, Int)] -> [(ArbolHuffman, Int)]
crearHoja [] = []
crearHoja ((c,f):xs) = (Hoja c, f) : crearHoja xs

{--Encontrar el minimo en una lista de arbol y su frecuencia--}
minimo :: [(ArbolHuffman, Int)] -> (ArbolHuffman, Int)
minimo [x] = x
minimo ((t,f):(t2,f2):xs)
    | f <= f2   = minimo ((t,f):xs)
    | otherwise = minimo ((t2,f2):xs)

{--Quitar un elemento de la lista--}
quitar2 :: (ArbolHuffman, Int) -> [(ArbolHuffman, Int)] -> [(ArbolHuffman, Int)]
quitar2 _ [] = []
quitar2 (t,f) ((t2,f2):xs)
    | f == f2 && iguales t t2 = xs
    | otherwise               = (t2,f2) : quitar2 (t,f) xs

{--Comparacion de los arboles para quitar correctamente--}
iguales :: ArbolHuffman -> ArbolHuffman -> Bool
iguales (Hoja c1) (Hoja c2) = c1 == c2
iguales (Nodo l1 r1) (Nodo l2 r2) = iguales l1 l2 && iguales r1 r2
iguales Vacio Vacio = True
iguales _ _ = False

{--Construccion del arbol de Huffman--}
crearArbol :: [(ArbolHuffman, Int)] -> ArbolHuffman
crearArbol [(t,_)] = t
crearArbol ts =
    crearArbol ((Nodo t1 t2, f1+f2) : ts'')
  where
    m1 = minimo ts
    ts' = quitar2 m1 ts
    m2 = minimo ts'
    ts'' = quitar2 m2 ts'
    (t1,f1) = m1
    (t2,f2) = m2

{--Lista de frecuencias de todos los caracteres--}
obtenerFrecuencias :: String -> [(Char, Int)]
obtenerFrecuencias [] = []
obtenerFrecuencias (c:cs) =
    let f = contar c (c:cs)
        resto = quitar c cs
    in (c,f) : obtenerFrecuencias resto

{--Tabla de codigos con el arbol--}
codigos :: ArbolHuffman -> [(Char, String)]
codigos (Hoja c) = [(c, "")]
codigos (Nodo izq der) =
    [(c, '0':code) | (c, code) <- codigos izq] ++
    [(c, '1':code) | (c, code) <- codigos der]
codigos Vacio = []

{--Buscar el codigo de un carácter--}
buscarCodigo :: Char -> [(Char, String)] -> String
buscarCodigo _ [] = error "ese carácter no se encuentra :("
buscarCodigo c ((d,code):resto)
    | c == d    = code
    | otherwise = buscarCodigo c resto

{--Codificar una cadena usando la tabla de los codigos--}
codificar :: String -> [(Char, String)] -> String
codificar [] _ = ""
codificar (c:cs) tabla = buscarCodigo c tabla ++ codificar cs tabla

{--Recorrer el arbol en base a bits y regresa el carácter cuando llegamos a una hoja--}
decodificarAux :: ArbolHuffman -> String -> (Char, String)
decodificarAux (Hoja c) bits = (c, bits) 
decodificarAux (Nodo izq der) (b:bs)      {--checamos y llegamos a hoja--}
    | b == '0'  = decodificarAux izq bs   {--bit 0 a la izquierda--}
    | b == '1'  = decodificarAux der bs   {--bit 1 a la derecha--}
decodificarAux _ [] = error "esta mal tu cadena comprimida, intenta de nuevo"

