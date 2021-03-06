# REVISAR

# Suponé que tenés el siguiente script escrito en Ruby y se te pide que lo hagas resiliente (tolerante a
# fallos), intentando siempre que se pueda recuperar la situación y volver a intentar la operación que
# falló. Agregá las modificaciones que consideres necesarias para lograr que el script sea más robusto.

# Este script lee una secuencia de no menos de 15 números desde teclado
# y luego imprime el resultado de la división
# de cada número por su entero inmediato anterior.
# Como primer paso se pide al usuario que indique la cantidad de números que ingresará.
cantidad = 0
while cantidad < 2
  puts '¿Cuál es la cantidad de números que ingresará? Debe ser al menos 15'
  cantidad = gets.to_i
end

# Luego se almacenan los números
numeros = 1.upto(cantidad).map do
  puts 'Ingrese un número'
  numero = gets.to_i
end

# Y finalmente se imprime cada número dividido por su número entero inmediato anterior
begin
  # resultado = numeros.map { |x| x/(x - 1).to_f }
  resultado = numeros.map { |x| x/(x - 1) }
rescue ZeroDivisionError
  puts 'No se pueden realizar divisiones por 0'
  numeros.delete(1)
  retry
end

puts 'El resultado es: %s' % resultado.join(', ')
