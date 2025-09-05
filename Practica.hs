sayHello :: String -> String
sayHello nombre = "Hello, " ++ nombre ++ "!"

calcularPropina :: Double  -> Double
calcularPropina cuenta = cuenta * 0.10

menor :: Int -> Int -> Int -> Int 
menor a b c  = if a <= b && a <= c
then a
else if b <= a && b <= c
then b
else c

decide :: Bool -> String -> String -> String
decide condicion cadena1 cadena2 = if condicion then cadena1 else cadena2

esDescendiente :: Int -> Int -> Int -> Int -> Bool
esDescendiente x y z w = x > y && y > z && z > w

esDivisible :: Int -> Int -> String
esDivisible x y = if y /= 0
  then show x ++ " es divisible entre " ++ show y
  else "No se puede dividir entre 0"

hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt (b ** 2 + h ** 2)

pendiente :: (Float, Float) -> (Float, Float) -> Float
pendiente (x1, y1) (x2, y2) = (y2 - y1) / (x2 - x1)

distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1) (x2, y2) = sqrt ((x2 - x1) **2 + (y2 - y1) **2)

cuadrados :: (Int, Int, Int, Int, Int) -> [Int]
cuadrados (a, b, c, d, e) = [a^2, b^2, c^2, d^2, e^2]


 






  














