#di_tcejbo : Imprime el object_id del receptor en espejo (en orden inverso).
#ssalc : Imprime el nombre de la clase del receptor en espejo.

module Reverso
	def di_tcejbo
		self.object_id.to_s.reverse
	end
	
	def ssalc
		self.class.name.reverse
	end
end

class ImplementaNeuquen
	include Reverso
end

a = ImplementaNeuquen.new
puts "object_id: #{a.object_id}"
puts "object_id inverse: #{a.di_tcejbo}\n\n"
puts "class name: #{a.class.name} "
puts "class name reverse: #{a.ssalc}"
