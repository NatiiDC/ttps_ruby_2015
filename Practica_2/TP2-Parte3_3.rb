#HECHO

# Implementá un método que reciba un número variable de parámetros y un bloque, y que al ser
# invocado ejecute el bloque recibido pasándole todos los parámetros que se recibieron encapsulando
# todo esto con captura de excepciones de manera tal que si en la ejecución del bloque se produce
# alguna excepción, proceda de la siguiente forma:

# Si la excepción es de clase RuntimeError  , debe imprimir en pantalla
# "Algo salió mal..." , y retornar :rt .
# Si la excepción es de clase NoMethodError , debe imprimir
# "No encontré un método: " más el mensaje original de la excepción que se produjo, y
# retornar :nm .
# Si se produce cualquier otra excepción, debe imprimir en pantalla "¡No sé qué hacer!" , y
# relanzar la excepción que se produjo.
# En caso que la ejecución del bloque sea exitosa, deberá retornar :ok .
# Tips: Leer sobre las sentencias raise y rescue

def parametros_variables (*arg, &bloque)
	begin
	bloque.call(*arg)
#	raise
#	raise NoMethodError, "error cua"
	rescue RuntimeError
		puts "Algo salió mal..."
		return :rt
	rescue NoMethodError => excep
		puts "No encontré un método: " + excep.message
		return :nm
	rescue
		puts "¡No sé qué hacer!"
		raise
	end
	:ok
end

puts parametros_variables(1, 2){puts "hola"}

