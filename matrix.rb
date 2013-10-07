#Modificamos el mismo fichero (matrix.rb) desde dos ramas distintas (master y sergio). Al hacer un merge, esto provocó que se generara
#un conflicto. Para resolverlo, simplemente hemos dejado ambas partes en el fichero y se ha subido al repositorio remoto.

#<<<<<<< HEAD
#! /Users/jonaslopezmesa/.rvm/rubies/ruby-2.0.0-p247/bin/ruby
require 'matrix'



puts "\n\n\n"
puts "Escoge una opción: "
puts "   - 1. A + B"
puts "   - 2. A * B"
opcion = gets.to_i
if opcion == 1
	if ((aColumnas == bColumnas) && (aFilas == bFilas))
		matrizC = matrizA + matrizB;
		puts matrizC
	else
		puts "Las dos matrices deben tener la misma dimensión"
	end
else if opcion == 2
	if aColumnas == bFilas
		matrizC = matrizA * matrizB;
		puts matrizC
	else
		puts "A debe tener el mísmo número de Columnas que el número de Filas de B"
	end
end
	
end
#=======
#! /usr/bin/env ruby
#require 'matrix'

control = 1
while control == 1
	puts "Introduzca las dimensiones de la matriz A:"
	puts "Columnas de A: " 
	aColumnas = gets.to_i
	puts "Filas de A: " 
	aFilas = gets.to_i
	if aColumnas == aFilas
		matrizA = Matrix.build(aColumnas, aFilas) { 0 + rand(99) }
		puts "Se ha generado una Matriz aleatoria A"
		puts matrizA
		control = 0
	else
		puts "La matriz debe ser cuadrada!"
	end
end
control = 1
while control == 1
	puts "Introduzca las dimensiones de la matriz B:"
	puts "Columnas de B: " 
	bColumnas = gets.to_i
	puts "Filas de B: " 
	bFilas = gets.to_i
	if bColumnas == bFilas
		matrizB = Matrix.build(bColumnas, bFilas) { 0 + rand(99) }
		puts "Se ha generado una Matriz aleatoria A"
		puts matrizB
		control = 0
	else
		puts "La matriz debe ser cuadrada!"
	end
end
#>>>>>>> origin/sergio
