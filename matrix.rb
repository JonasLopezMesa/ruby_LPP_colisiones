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

