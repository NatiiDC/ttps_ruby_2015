# HECHO

# Implementá el método cuanto_falta? que opcionalmente reciba como parámetro un objeto
# Time y que calcule la cantidad de minutos que faltan para ese momento. Si el parámetro de fecha
# no es provisto, asumí que la consulta es para la medianoche de hoy.
# Por ejemplo:
#cuanto_falta? Time.new(2015, 12, 31, 23, 59, 59)
#  Debe retornar la cantidad de minutos que faltan para las 23:59:59 del 31/12/2015
#cuanto_falta?
#  Debe retornar la cantidad de minutos que faltan para la medianoche de hoy


def cuanto_falta? (t = Time.new(Time.now.year, Time.now.mon, (Time.now.day + 1), 0, 0, 0))
	if t > Time.now
		(t - Time.now) * 60
	else
		0
	end
end

puts cuanto_falta? Time.new(Time.new.year, 12, 31, 23, 59, 59)
puts cuanto_falta? Time.new(Time.new.year, 5, 31, 23, 59, 59)
puts cuanto_falta?
