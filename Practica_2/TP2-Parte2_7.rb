#HECHO

class TrueClass
	def opposite
		false
	end
end

class FalseClass
	def opposite
		true
	end
end

puts false.opposite
# => true
puts true.opposite
# => false
puts true.opposite.opposite
# => true
