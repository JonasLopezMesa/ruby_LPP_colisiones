#! /usr/bin/env ruby
require 'matrix'

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
