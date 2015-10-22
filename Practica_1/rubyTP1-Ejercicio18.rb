# HECHO


def es_palindromo (num)
	num.to_s == num.to_s.reverse
end

def ejercicio18 
	
	n1, n2 = 899, 899
	num1 = 999
	
	n1.times {  
		num2 = 999
		n2.times { 
			if es_palindromo(num2*num1)
				puts ("#{num1} #{num2}")
				return num2*num1
			end
			num2-=1
		}
		num1-=1
	}
end

puts ejercicio18()
