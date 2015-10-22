#HECHO


module GenericFactory
	def create
		new
	end
end

class Extiende 
	extend GenericFactory

	def initialize
		@variable = true
	end
end


exti = Extiende.create
puts exti.class.name
