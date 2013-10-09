#! /Users/jonaslopezmesa/.rvm/rubies/ruby-2.0.0-p247/bin/ruby


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

def read_matrices(fn)
	text = File.open(fn).read

	a, b = text.split(/\n\n+/)
	a = to_m(a)
	b = to_m(b)

	[a, b]
end


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


principal
