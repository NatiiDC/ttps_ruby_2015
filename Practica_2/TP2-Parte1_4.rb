# HECHO

# Escribí un método que dado un número variable de parámetros que pueden ser de cualquier tipo,
# imprima en pantalla la cantidad de caracteres que tiene su representación como String y la
# representación que se utilizó para contarla.

def longitud *things
	things.each { "#{thing.to_s} --> #{thing.to_s.length}" }
end

longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)

#ejemplo
#longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)
# Debe imprimir:
# "9" --> 1
# "2015-09-07 21:04:10 +0000" --> 25
# "Hola" --> 4
# {:un=>"hash"} --> 13
# ruby --> 4
