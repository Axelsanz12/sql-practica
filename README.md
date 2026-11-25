# sql-practica

Práctica de funciones de ventana en SQL Server, con datos de ejemplo inventados.

## Qué incluye

El archivo `ventanas.sql` crea una base de práctica con una tabla `Pedidos` y resuelve tres ejercicios:

1. **Pedido más reciente de cada cliente**, con `ROW_NUMBER() OVER (PARTITION BY ... ORDER BY ...)` dentro de una CTE.
2. **Pedido de mayor monto de cada cliente**, con la misma técnica ordenando por monto.
3. **Monto acumulado por cliente**, con `SUM() OVER`.

## Conceptos practicados

- CTEs (`WITH`)
- Funciones de ventana: `ROW_NUMBER`, `SUM() OVER`
- `PARTITION BY` y `ORDER BY` dentro de `OVER`
- Filtrado por posición (`Orden = 1`, `Orden <= 2`)

## Cómo probarlo

1. Abrí SQL Server Management Studio.
2. Ejecutá `ventanas.sql` completo.
3. Corré cada consulta por separado y compará los resultados.

## Nota

Todos los datos son inventados y no corresponden a ninguna empresa real.
