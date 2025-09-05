{- Funcion: sayHello
Descripción: Devuelve un Hello seguido de la cadena de texto ingresado 
Uso: sayHello "Haskell" = Hello, Haskell!
 -}

sayHello :: String -> String
sayHello nombre = "Hello, " ++ nombre ++ "!"

{- Funcion: calcularPropina
Descripción: Devuelve el 15% de un numero
Uso: calcularPropina 1500 = 225
 -}
 
calcularPropina :: Double  -> Double
calcularPropina cuenta = cuenta * 0.10

{- Funcion: menor
Descripción: Devuelve el menor de 3 numeros
Uso: Menor 3 5 7 = 3
 -}
 
menor :: Int -> Int -> Int -> Int 
menor a b c  = if a <= b && a <= c
then a
else if b <= a && b <= c
then b
else c

{- Funcion: decide
Descripción: Devuelve la primera cadena si el valor del booleano es True y la segunda si  es False
Uso: decide False "hola" "mundo" = mundo
 -}
 
decide :: Bool -> String -> String -> String
decide condicion cadena1 cadena2 = if condicion then cadena1 else cadena2

{- Funcion: esDecendiente
Descripción: Recibe 4 enteros y devuelve True si los numeros fueron ingresados de manera descendiente y False en otro caso
Uso: esDecendiente 6 5 3 2 = True
 -}
 
esDescendiente :: Int -> Int -> Int -> Int -> Bool
esDescendiente x y z w = x > y && y > z && z > w

 {- Funcion: esDivisible
Descripción: Recibe 2 enteros y devuelve una tupla de tipo (x es dividible entre y) a menos que y sea 0
Uso: esDivisible 3 1  = 3 es divisible ete 1
 -}
 
esDivisible :: Int -> Int -> String
esDivisible x y = if y /= 0
  then show x ++ " es divisible entre " ++ show y
  else "No se puede dividir entre 0"
  
 {- Funcion: hipotenusa
Descripción: Recibe la base y altura de triangulo rectangulo y devuelve la hipotenusa
Uso: hipotenusa 9.0 12.0 = 15.0
 -}
 
hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt (b ** 2 + h ** 2)

 {- Funcion: pendiente
Descripción: Recibe dos tupla (puntos) y regresa la pendiente de una recta
Uso: pendiente ((3.0, 2.0), (7.0, 8.0)) = 1.5
 -}
 
pendiente :: (Float, Float) -> (Float, Float) -> Float
pendiente (x1, y1) (x2, y2) = (y2 - y1) / (x2 - x1)

 {- Funcion: distanciaPuntos
Descripción: Recibe 2 tuplas (puntos) y regresa la distancia entre esos puntos
Uso: distanciaPuntos ((2.0, 1.0), (5.0, 5.0)) = 5.0
 -}
 
distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1) (x2, y2) = sqrt ((x2 - x1) **2 + (y2 - y1) **2)

{- Funcion: cuadrados
Descripción: Recibe 1 tupla de 5 números y regresa el cuadrado de los números
Uso: cuadrados (1, 2, 3, 4, 5) = (1, 4, 9, 16, 25)
 -}
 
cuadrados :: (Int, Int, Int, Int, Int) -> [Int]
cuadrados (a, b, c, d, e) = [a^2, b^2, c^2, d^2, e^2]


 






  














