#HECHO

# Escribí un método da_nil? que reciba un bloque, 
# lo invoque y retorne si el valor de retorno del bloque fue nil . Por ejemplo:

def da_nil?(&bloque)
	if bloque
		bloque.call.nil?
	else 
		false
	end
end

puts da_nil? { }
# => true

puts da_nil? do
	'Algo distinto de nil'
end
# => false
