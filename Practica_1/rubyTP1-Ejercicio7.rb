# HECHO

#Dada una cadena cualquiera, y utilizando los métodos que provee la clase String , realizá las siguientes operaciones sobre el string :
#	1. Imprimilo con sus caracteres en orden inverso.
#	2. Eliminá los espacios en blanco que contenga.
#	3. Convertí cada uno de sus caracteres por su correspondiente valor ASCII.
#	4. Cambiá las vocales por números ( a por 4 , e por 3 , i por 1 , o por 0 , u por 6 ).

def ejercicio7 (rever, sinSpaces, ascii, vocalNums)
	
	puts "Las frases son: '#{rever}', '#{sinSpaces}', '#{ascii}', '#{vocalNums}'"

	puts rever.reverse
	#strip borra los espacios en blanco al principio y final
	puts sinSpaces.delete(" ")
	ascii.each_byte do |c| ;print "-#{c}-"; end
	# pensar con split . al caracter .ord para pedir el ASCII
	puts "\n#{vocalNums.gsub(/[aeiou]/, 'a' => 4, 'e' => 3, 'i' => 1, 'o' => 0, 'u' => 6)}"

end

ejercicio7("Palabra Al Revez", "Sin espacios en blanco", "ABC012", "murcielago")
