#! /usr/bin/env ruby

def read_matrices(fn)
	text = File.open(fn).read

	a, b = text.split(/\n\n+/)
	a = to_m(a)
	b = to_m(b)

	[a, b]
end

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
