# Modelá con una jerarquía de clases algo sencillo que represente la siguiente situación:
#	Tres tipos de vehículo: Auto , Moto y Lancha
#	Los tres tipos arrancan usando una llave.
#	El auto, adicionalmente, requiere que no esté puesto el freno de mano y que el cambio esté en
#punto muerto. La moto, por otra parte, requiere una patada (sin la llave). La lancha arranca con la
#llave y listo.
#	El arranque de los tres vehículos se prueba en un taller. La especificación de Taller es la siguiente:

class Taller
	def probar(objeto)
		objeto.arrancar
	end
end

class Vehiculo
	def initialize 
		@key = true
	end
	
	def antes_de_arrancar 
		true
	end	
	
	def to_s
		self.class.name
	end

	def arrancar
		
		if @key.nil? || !antes_de_arrancar
			puts "Soy una #{self.to_s} y no pude arrancar"
			false
		else
			puts "Soy una #{self.to_s} y pude arrancar"
			true
		end
	end
end

class Auto < Vehiculo
	
	def initialize
		super
		@freno_de_mano = false
		@cambios = ['puntoMuerto', 'primera', 'segunda', 'tercera', 'cuarta', 'quinta']
		@cambio = @cambios[0]
	end
	
	def poner_freno_de_mano
		@freno_de_mano = true;
	end
	
	def quitar_freno_de_mano
		@freno_de_mano = false;
	end

	def cambio_punto_muerto
		@cambio = @cambios[0]
	end	
	
	def antes_de_arrancar 
		!@freno_de_mano && @cambio == @cambios[0]
	end
	
end

class Moto < Vehiculo
	
	
	def patada 
		true
	end
	
	def antes_de_arrancar 
		patada
	end
	
end

class Lancha < Vehiculo
	
end


t = Taller.new
a = Auto.new
m = Moto.new
l = Lancha.new

t.probar a
t.probar m
t.probar l
