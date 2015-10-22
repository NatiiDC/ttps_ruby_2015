# HECHO

def contar (line, sub)
	line.scan(/\b#{sub}\b/i).size
end

puts contar("La casa de la esquina tiene la puerta roja y la ventana blanca. lala la", "la" )
