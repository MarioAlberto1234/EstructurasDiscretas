module Aux where

data Arbol a = Vacio | AB a (Arbol a) (Arbol a) deriving (Eq, Ord, Show)

{--Tipo de dato auxiliar para recorrido--}
data Recorrido = InOrden | PreOrden | PosOrden deriving (Eq, Show)

{--La funcion compara recibe elementos que se puedan comparar y devuelve el menor de ellos--}
compara :: (Ord a) => a -> a -> a
compara a1 a2 = if a1 <= a2 then a1 else a2

{--Funcion auxiliar que inserta cada elemento en el arbol--}
construir :: Ord a => [a] -> Arbol a -> Arbol a
construir [] arbol = arbol
construir (x:xs) arbol = construir xs (insertar x arbol)

{--Funcion auxiliar para listaArbol que inserta un elemento en un ABB--}
insertar :: Ord a => a -> Arbol a -> Arbol a
insertar x Vacio = AB x Vacio Vacio
insertar x (AB y izq der)
  | x < y     = AB y (insertar x izq) der
  | otherwise = AB y izq (insertar x der)

{--Funcion auxiliar que calcula la altura de un arbol--}
altura :: Arbol a -> Int
altura Vacio = 0
altura (AB _ izq der) = 1 + mayor (altura izq) (altura der)

{--Funcion auxiliar que compara la diferencia--}
diferenciaMenorOIgual :: Int -> Int -> Bool
diferenciaMenorOIgual a b =
  if a >= b then a - b <= 1 else b - a <= 1

{--Funcion auxiliar que devuelve el mayor de dos numreros--}
mayor :: Int -> Int -> Int
mayor x y = if x >= y then x else y

