VALUE = 'global'
module A
	VALUE = 'A'
	class B
		VALUE = 'B'
		def self.value
			VALUE
		end
		def value
			'iB'
		end
	end

	def self.value
		VALUE
	end
end

class C
	class D
		VALUE = 'D'
		def self.value
			VALUE
		end		
	end
	module E
		def self.value
			VALUE
		end
	end
	
	def self.value
		VALUE
	end
end

class F < C
	VALUE = 'F'
end

puts A.value
puts A::B.value
puts C::D.value
puts C::E.value
puts F.value

#A
#B
#D
#global
#global

puts A::value
#puts A.new.value
#puts B.value
#puts D.value
puts C.value
puts F.superclass.value

#A
#undefined method `new' for A:Module (NoMethodError)
#in `<main>': uninitialized constant B (NameError)
#in `<main>': uninitialized constant C (NameError)
#global
#global
