import Aux

{--Define la función a_natural que tome un entero (0,1,2...) y lo lleve a su estructura
de dato Natural
--}
a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n
  | n > 0     = S (a_natural (n - 1))
  | otherwise = error "Solo se permiten enteros no negativos"
  
{--Define la función a_entero que lleve un dato Natural a su valor entero.
--}
a_entero :: Natural -> Int
a_entero Cero     = 0
a_entero (S nat)  = 1 + a_entero nat

{--Define la función potenciaNat que eleva un número natural a la potencia del se-
gundo.
--}
potenciaNat :: Natural -> Natural -> Natural
potenciaNat _ Cero     = S Cero 
potenciaNat base (S exp) = multNat base (potenciaNat base exp)

{--Define la función facNat devuelve el factorial de un natural dado.
--}
facNat :: Natural -> Natural
facNat Cero    = S Cero
facNat (S n)   = multNat (S n) (facNat n)
