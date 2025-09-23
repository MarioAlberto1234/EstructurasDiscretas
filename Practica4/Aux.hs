module Aux where


data Natural = Cero | S Natural deriving (Eq, Show)
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{-- Suma de naturales
--}
sumaNat :: Natural -> Natural -> Natural
sumaNat Cero     n = n
sumaNat (S m)    n = S (sumaNat m n)

{-- Multiplicación de naturales
--}
multNat :: Natural -> Natural -> Natural
multNat _ Cero     = Cero
multNat n (S m)    = sumaNat n (multNat n m)

{-- Profundidad de una Matrioska
--}
profundidad :: Matrioska -> Int
profundidad Mati     = 0
profundidad (Cont m) = 1 + profundidad m
