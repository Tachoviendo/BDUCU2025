
# Ejercicio 09: Algebra relacional

Estudiante: Silva, Ignacio 

Universidad Católica

Asignatura: Bases de datos I

Docente: Jorge Martínez

Fecha: 28 de septiembre de 2025
## Para este ejercicio se plantea la siguiente base de datos: 

```
PERSONA (nombre, edad, género)
FRECUENTA(nombre, pizzería)
COME(nombre, pizza)
MENU(pizzería, pizza, precio)
```

## Consultas:

### 1. Encontrar las pizzerías frecuentadas por al menos una persona menor a 18 años
#### Consulta en algebra:
```
 MENORES ← σ edad < 18 (PERSONA)
 PIZZERIAS_MENORES ← π pizzería  (MENORES ⋈ FRECUENTA)
```
#### Consulta en SQL

```SQL
SELECT PERSONA 
JOIN FRECUENTA ON PERSONA.nombre = FRECUENTA.nombre
Where PERSONA.edad < 18;
```

### 2. Encontrar los nombres de las mujeres que han comido pizza de hongos, pizza de pepperoni (o ambas). 

#### Consulta en algebra:

```
MUJERES ← σ género < "femenino" (PERSONA)
COME_FILTRADO ← σ pizza="hongos" OR pizza="pepperoni" (COME)
MUJERES_PIZZAS ← π nombre (MUJERES ⋈ COME_FILTRADO)
```

#### Consulta en SQL

```SQL
SELECT PERSONA
JOIN COME ON PERSONA.nombre = COME.nombre
Where COME.pizza = "hongos" OR COME.Pizza = "pepperoni" AND PERSONA.genero = "femenino";
```

### 3. Encontrar los nombres las mujeres que han comido tanto pizza de hongos como pizza de pepperoni. 

#### Consulta en algebra:

```
MUJERES ← σ género="femenino" (PERSONA)
HONGOS ← σ pizza="hongos" (COME)
PEPPERONI ← σ pizza="pepperoni" (COME)

MUJERES_HONGOS ← π nombre (MUJERES ⋈ HONGOS)
MUJERES_PEPPERONI ← π nombre (MUJERES ⋈ PEPPERONI)

RESULTADO ← MUJERES_HONGOS ∩ MUJERES_PEPPERONI
```


#### Consulta en SQL

```SQL
SELECT PERSONA
JOIN COME c1 ON PERSONA.nombre = c1.nombre
JOIN COME c2 on PERSONA.NOMBRE = c2.nombre
Where c1.pizza = "hongos" AND c2.Pizza = "pepperoni" AND PERSONA.genero = "femenino";
```
Como el campo pizza no puede ser al mismo tiempo `pepperoni` y `hongos`, hago dos joins, uno con la finalidad de analizar si tal nombre, aparece junto a el primer dato y el `c2` para el segundo. Dandome como resultado que en mi consulta solo aparezcan solo las mujeres que cumplan ambas condiciones.

### 4. Encontrar las pizzerías que ofrecen al menos una pizza de las que come Amy a un precio menor a $10.

```
AMY ← σ nombre="Amy" (COME)
PIZZAS ← σ precio<10 (MENU)

RESULTADO ← π pizzería (AMY ⋈ _AMY.pizza = PIZZAS.pizza_ PIZZAS)

```

Usé los guiones bajos para marcar la condición de la combinación ya que no puedo hacer subindices como en el libro 


![sc del libro](assets/scLibro1.png)

### Encontrar las pizzerías que son frecuentadas solamente por mujeres o las que son frecuentadas solo por hombres.


#### Consulta en algebra:
```
MUJERES ← σ género="femenino" (PERSONA)
HOMBRES ← σ género="masculino" (PERSONA)

PIZZERIA_MUJERES ← π pizzería (MUJERES ⋈ FRECUENTA)
PIZZERIA_HOMBRES ← π pizzería (HOMBRES ⋈ FRECUENTA)

RESULTADO ← (PIZZERIA_MUJERES − PIZZERIA_HOMBRES) ∪ (PIZZERIA_HOMBRES − PIZZERIA_MUJERES)

```
Para el resultado hago la diferencia entre mabos conjuntos para eliminar los que frecuentan tanto hombres como mujeres

#### Consulta SQL
```SQL
SELECT FRECUENTA.pizzería
FROM FRECUENTA
JOIN PERSONA ON FRECUENTA.nombre = PERSONA.nombre
GROUP BY FRECUENTA.pizzería
HAVING COUNT(DISTINCT PERSONA.género) = 1;
```

Nunca había usando `HAVING` en ninguna consulta, pero aca me es util pq le puedo decir al GRUOP BY que agrupe solo sí en esa pizzería hay solo un género que la frecuenta.

### 6. Para cada persona, encontrar las pizzas que esa persona come y que no son ofrecidas por ninguna de las pizzerías que esa persona frecuenta. Retornar pares PERSONA.nombre - pizza.

#### Consulta Algebra:

```

COME_PERSONA ← π nombre, pizza (COME)

PIZZERIAS_PERSONA ← FRECUENTA ⋈ _FRECUENTA.pizzería = MENU.pizzería_ MENU

PIZZERIAS_PERSONA_PROYECT ← π nombre, pizza(PIZZERIAS_PERSONA)

RESULTADO ← COME_PERSONA − PIZZERIAS_PERSONA_PROYECT
```

#### Consulta SQL

```SQL
SELECT COME.nombre, COME.pizza
FROM COME 
WHERE NOT EXISTS (
    SELECT *
    FROM FRECUENTA 
    JOIN MENU ON FRECEUNTA.pizzería = MENU.pizzería
    WHERE FRECEUNTA.nombre = COME.nombre
      AND MENU.pizza = COME.pizza
);

```
EN `SQL` me resulto mas facil hacerlo ya que `WHERE NOT EXISTS` cumple la función de la diferencia que hacemos en el Algebra relacional.

### 7. Personas que frecuentan solo pizzerías que sirven al menos una pizza que ellas consumen

#### Conculsta en algebra
```
COME_PERSONA ← π nombre, pizza (COME)

PIZZERIAS_PERSONA ← FRECUENTA ⋈ _FRECUENTA.pizzería = MENU.pizzería


PERSONAS_NO_CUMPLEN ← π nombre (COME_PERSONA × FRECUENTA) − π nombre (COME_PERSONA ⋈ PIZZERIAS_PERSONA)


RESULTADO ← π_{nombre}(PERSONA) − PERSONAS_NO_CUMPLEN

```

Con el pares de los nombres de las persona sy la pizzeria que frecuentan, 














