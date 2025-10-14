**Objetivo de la Práctica**
El objetivo fue lograr la implementación de funciones recursivas que usando arboles y listas no devolviera lo que nos pedia en las indicaciones del ejercicio.
**Tiempo Requerido**
El tiempo que me llevó hacer esta practica fue de 2 días
**Comentarios extra**
Lo que màs me costó como en casi todas las practiacs pasadas es hacer el uso de las funciones auxiliares y que si hagan lo que deben de hacer, de ahì en fuera un poquito tardadito hacer el README.


**Representaciones graficas de los arboles binarios**
Arbol 1 - graph TB R(("1")) I1(("2")) D1(("3")) I2(("4")) D2(("Ø")) I4((11)) D4((10)) I5(("0")) D5(("28")) R --> I1 R --> D1 I1 --> I2 I1 --> D2 D1 --> I4 D1 --> D4 I4 --> I5 I4 --> D5

Arbol 2 - graph TB R(("4")) I1(("7")) D1(("3")) I2(("9")) D2(("Ø")) I3(("15")) D3(("Ø")) R --> I1 R --> D1 I1 --> I2 I1 --> D2 I2 --> I3 I2 --> D3

**Representacion visual de los arboles**
a) `AB 4 (Vacio) (AB 3 Vacio Vacio)`

```markdown
```mermaid
graph TB
A4["4"]
A4 --> V1["Vacio"]
A4 --> A3["3"]
A3 --> V2["Vacio"]
A3 --> V3["Vacio"]

b) `AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))`

```markdown
```mermaid
graph TB
A4["4"]
A4 --> V1["Vacio"]
A4 --> A3["3"]
A3 --> V2["Vacio"]
A3 --> A5["5"]
A5 --> V3["Vacio"]
A5 --> V4["Vacio"]

c) `AB 3 (AB 7 (AB 12 Vacio Vacio) Vacio) (AB 6 (AB 11 Vacio Vacio) (AB 10 Vacio Vacio))`

```markdown
```mermaid
graph TB
A3["3"]
A3 --> A7["7"]
A3 --> A6["6"]
A7 --> A12["12"]
A7 --> V1["Vacio"]
A12 --> V2["Vacio"]
A12 --> V3["Vacio"]
A6 --> A11["11"]
A6 --> A10["10"]
A11 --> V4["Vacio"]
A11 --> V5["Vacio"]
A10 --> V6["Vacio"]
A10 --> V7["Vacio"]