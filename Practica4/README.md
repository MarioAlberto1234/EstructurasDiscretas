Recursión en la canción el **pollito pío**:
Al haber escuchado la canción y ver la letra de la misma, se puede ver cómo la canción comienza con: *En la radio hay un pollito* seguido del sonido que hace un pollito. Al ir avanzando la canción podemos escuchar cómo se van agregando nuevos animales por delante del pollito también con su sonido característico. Con el paso de la canción y los demás animales que se van agregando, podemos observar la recursión, esto al momento de ir agregando nuevos animales por delante del pollito pio e irlos recorriendo desde el último hasta el pollito, si nos enfocamos más explícitamente en la recursión podríamos decir que el caso base es el pollito y su sonido, y por lo tanto el caso recursivo sería la agregación del nuevo animal y el llamado a la secuencia anterior, repitiéndola en orden inverso. Aquí nos damos cuenta de cómo se aplica la recursión a esta canción.

**Objetivo Práctica 4**
El objetivo fue implementar seis funciones en Haskell con su implementacion recursiva tanto en Natural como en Mati, así también como el uso de modulos y import para cada uno.
**Descripción de casos base y recursivos**
1. sumaNat
- Caso base: Cuando el primer número natural es Cero, la suma es simplemente el segundo número. Esto refleja que sumar cero no altera el valor.
- Caso recursivo: Todo natural puede representarse como S m. Entonces, sumar S m con otro número n equivale a sumar m con n y luego aplicar S, es decir, añadir una unidad al resultado.

2. multNat
- Caso base: Multiplicar cualquier número por Cero da Cero, lo cual respeta la propiedad aritmética básica.
- Caso recursivo: Multiplicar n por S m equivale a sumar n con el resultado de multiplicar n por m. Se reduce el problema a una suma repetida.

3. potenciaNat
- Caso base: Toda base elevada a la potencia Cero da como resultado 1, representado como S Cero.
- Caso recursivo: Elevar base a S exp equivale a multiplicar base por el resultado de elevar base a exp. Se reduce la potencia en uno y se acumula el producto.

4. facNat
- Caso base: El factorial de Cero es 1, representado como S Cero, siguiendo la definición matemática estándar.
- Caso recursivo: El factorial de S n se calcula multiplicando S n por el factorial de n. Se reduce el número y se acumula el producto.

5. mayorIgual
- Caso base: Ambas matrioskas pueden ser Mati, en cuyo caso se consideran iguales en profundidad.
- Caso recursivo: Cada Cont m representa una capa adicional. Comparar dos matrioskas equivale a contar sus capas (profundidad) y verificar si la primera es mayor o igual que la segunda.

6. aplana
- Caso base: Si la matrioska es Mati, la lista resultante contiene solo ese elemento.
- Caso recursivo: Si la matrioska es Cont m, se agrega esa capa a la lista y se continúa aplanando m. Así se construye una lista desde la más externa hasta la más interna.

**Tiempo estimado**
Me llevo un total de 3 horas terminarlo porque no sabia como implementar el modulo e importarlo, además del desarrollo de las funciones.

**Comentarios**
-Estuvo interesante la práctica aunque me costó un poco.
-Fue bueno aprender como hacer los import y el uso de modulos.