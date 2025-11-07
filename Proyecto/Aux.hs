module Aux where
data ArbolHuffman = Hoja Char | Nodo ArbolHuffman ArbolHuffman | Vacio

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

