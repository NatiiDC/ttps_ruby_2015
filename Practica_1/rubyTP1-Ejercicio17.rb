#HECHO

def fib_pares
	i1, i2 = 1, 1
	tot = 0
    while i1 <= 4000000
        if i1.even?
		tot += i1
	end
        i1, i2 = i2, i1+i2

    end
	tot
end

puts fib_pares
