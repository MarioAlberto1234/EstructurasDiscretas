import Aux

{--Define la función mayorIgual que compara dos matrioscas y devuelve la matrioska
que esta dentro.
--}
mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual m1 m2 = profundidad m1 >= profundidad m2

{--Define la función aplana que convierte una matrioska anidada en una lista plana de
todas las matrioskas que la componen, desde la más externa hasta la más interna.
--}
aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont m) = [Cont m] ++ aplana m
