#<<<<<<< HEAD
#! /usr/bin/env ruby


def mapmap(a)
	a.map { |r| 
		r.map { |e| 
			yield e
		}
	}
end

def to_m(a)
	a = a.split(/\n/)
	a = a.map { |r| r.split(/\s+/) }
	a = mapmap(a) { |x| x.to_f }
end
#=======

#>>>>>>> sergio

def read_matrices(fn)
	text = File.open(fn).read

	a, b = text.split(/\n\n+/)
	a = to_m(a)
	b = to_m(b)

	[a, b]
end

#<<<<<<< HEAD
def sumar_matrices(a, b)
	resultado = Array.new(a.length) { Array.new(a[0].length) }
	if ((a.length == b.length) && (a[0].length == b[0].length))
		for i in (0...a.length) do
			for j in (0...a[0].length) do
				resultado[i][j] = a[i][j] + b[i][j]
			end
		end
		resultado
	else
		puts "Las matrices tienen que ser de el mismo múmero de filas y columnas"
	end
end

def multiplicar_matrices(a, b)
	resultado = Array.new(a.length) { Array.new(b[0].length) }
	if a[0].length == b.length
		for i in (0...resultado.length) do
			for j in (0...resultado[0].length) do
				s = 0
				for k in (0...a.length) do s += a[i][k] * b[k][j] end
				resultado[i][j] = s
			end
		end
	else
		puts "Las matriz A debe tener el mismo número de filas que las columnas de B"
	end
	resultado
end
principal
#=======
def principal
	a, b = read_matrices('fichero.dat')
	puts "Se han leído las dos matrices del fichero"
	puts "¿Qué desea hacer?"
	puts "1. Sumar Matrices"
	puts "2. Multiplicar Matrices"
	puts "3. Salir"
	opcion = gets.to_i

	if opcion == 1
		puts sumar_matrices(a, b)
		else if opcion == 2
			puts multiplicar_matrices(a, b)
		else
			puts "Adios"
		end
	end
end
#>>>>>>> sergio
