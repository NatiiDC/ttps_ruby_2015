#HECHO

def ejercicio16 (tope)
	i = 3
	tot = 0
    	loop do
		if (i > tope) 
			return tot
		end		
		if ((i % 3) == 0) || ((i % 5) == 0 )				
			puts i
			tot += i
		end
		i += 1
    end
end


puts ejercicio16(20)
