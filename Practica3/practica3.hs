{-Implementa la función créditos que toma un entero y regresa la materia que tiene
esos respectivos créditos, toma como referencia las materias de primer semestre
de la carrera Ciencias de la Computación.
ghci > creditos 12
ghci > [ Introduccion a las CC ]
ghci > creditos 10
ghci > [ Estructuras Discretas , Algebra Superior ]
créditos puede regresar una tupla o una lista
-}

creditos :: Int -> [String]
creditos n =
  if n == 12 then ["Introduccion a las CC", "Matematicas Aplicadas a las Ciencias"]
  else if n == 10 then ["Estructuras Discretas", "Algebra Superior"]
  else if n == 4 then ["Ingles"]
  else ["No hay materias con ese numero de creditos"]
  
{-Usando una lista por comprensión, define la función negativos que cuenta los nú-
meros negativos de una lista.
ghci > negativos [ -1 , 2 , 4 , 6 , -4]
ghci > 2
-}

negativos :: [Int] -> Int
negativos list = length [x | x <- list, x < 0]

{-Usando una lista por comprensión, define la función primos que devuelva lo primos
de esta lista.
ghci > primos [1..20]
ghci > [2 , 3 , 5 , 7 , 11 , 13 , 17 , 19]
-}

primos :: [Int] -> [Int]
primos list = [x | x <- list, x `mod` 2 == 0]

{-Implementa la función conjuntoLista, que recibe una lista de cualquier tipo y de-
vuelve una lista sin elementos repetidos a partir de la lista original.

ghci > conjuntoLista [1 , 2 , 2 , 1 , 3]
ghci > [1 ,2 ,3]
-}

conjuntoLista :: Eq a => [a] -> [a]
conjuntoLista [] = []
conjuntoLista (x:xs) = x : conjuntoLista [a | a <- xs, a /= x]

