module Practica6 where
import Aux

{--Función nVacios. Devuelve el total de nodos vacios en un arbol--}
nVacios :: Arbol a -> Int
nVacios Vacio = 1
nVacios (AB r izq der) = nVacios izq + nVacios der

{--Función refleja. Hace que todos los subarboles izquierdos se vuelvan subarboles
derechos y viceversa--}
refleja :: Arbol a -> Arbol a
refleja Vacio = Vacio
refleja (AB r izq der) = AB r (refleja der) (refleja izq)


{--Función max ó min. Devuelva el elemento máximo o mínimo de un árbol (elige solo
una de las dos funciones)--}
minimo :: (Ord a) => Arbol a -> a
minimo Vacio = error "Árbol vacío no tiene mínimo"
minimo (AB n Vacio Vacio) = n
minimo (AB n izq Vacio) = compara n (minimo izq)
minimo (AB n Vacio der) = compara n (minimo der)
minimo (AB n izq der) = compara n (compara (minimo izq) (minimo der) )

{--Función recorrido. Devuelve una lista con los elementos de un arbol de acuerdo
a alguno de los tres recorridos:
• Inorden
• PreOrden
• PostOrden
--}
recorrido :: Arbol a -> Recorrido -> [a]
recorrido Vacio _ = []
recorrido (AB r izq der) InOrden   = recorrido izq InOrden ++ [r] ++ recorrido der InOrden
recorrido (AB r izq der) PreOrden  = [r] ++ recorrido izq PreOrden ++ recorrido der PreOrden
recorrido (AB r izq der) PosOrden = recorrido izq PosOrden ++ recorrido der PosOrden ++ [r]


{--Función esBalanceado. Verifica si un árbol está balanceado, si lo esta regresa True
de lo contrario False--}
esBalanceado :: Arbol a -> Bool
esBalanceado Vacio = True
esBalanceado (AB _ izq der) =
  diferenciaMenorOIgual (altura izq) (altura der)
  && esBalanceado izq
  && esBalanceado der


{--Función listaArbol. Recibe una lista de elementos cualesquiera y regresa un ár-
bol binario de busqueda--}
listaArbol :: Ord a => [a] -> Arbol a
listaArbol xs = construir xs Vacio
