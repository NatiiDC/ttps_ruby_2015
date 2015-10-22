# Si no lo hiciste de esa forma en la práctica 1, 
# escribí un enumerador que calcule la serie de Fibonacci.

fibonacci = Enumerator.new do |caller|
    i1, i2 = 1, 1
    loop do
        caller.yield i1
        i1, i2 = i2, i1+i2
    end
end

16.times { puts fibonacci.next }
