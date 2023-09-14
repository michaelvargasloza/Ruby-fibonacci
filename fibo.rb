# Solicitar la cantidad de términos de la serie Fibonacci
print "Ingrese la cantidad de términos de la serie Fibonacci que desea generar: "
cantidad = gets.chomp.to_i

# Validar que la cantidad sea un número positivo
if cantidad <= 0
  puts "Por favor, ingrese un número positivo."
else
  # Inicializar los primeros dos términos de la serie
  primero = 0
  segundo = 1

  # Mostrar el primer término
  if cantidad >= 1
    print "#{primero}"
  end

  # Mostrar el segundo término
  if cantidad >= 2
    print ", #{segundo}"
  end

  # Generar la serie de Fibonacci
  i = 2
  while i < cantidad
    siguiente = primero + segundo
    print ", #{siguiente}"
    primero = segundo
    segundo = siguiente
    i += 1
  end

  puts # Imprimir una nueva línea al final
end