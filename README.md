# Requerimientos cubiertos

- Al crear un usuario se debe crear un carro abierto
- Al cerrar un carro se debe crear un carro nuevo del mismo usuario abierto
- Al "ordenar un producto" asociarlo al último carro abierto.
- Al "ordenar un producto" se debe actualizar el precio total del carro
- Al eliminar un producto del carro también se debe actualizar el precio del carro
- Un pago exitoso cierra el carro, el pago puede guardarse en un modelo adicional o dentro del mismo del carro, la relación es 1 a 1

# Ejercicios para practicar

- Agregar un buscador por categoría
- Agregar roles al usuario, solo el admin de la tienda debe poder ver el panel de control
- Integrar pago de paypal