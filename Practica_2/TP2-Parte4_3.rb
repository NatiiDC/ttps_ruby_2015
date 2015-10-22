# Extendé la clase Array con el método randomly que funcione de la siguiente manera:
# Si recibe un bloque, debe invocar ese bloque con cada uno de los elementos del arreglo en
# orden aleatorio.
# Si no recibe un bloque, debe devolver un enumerador que va arrojando, de a uno, los elementos
# del arreglo en orden aleatorio.

class Array
  def randomly(&bloque)
     if block_given?
       self.shuffle.each{ |e| bloque.call(e) }
      #  return nil
     else
       self.shuffle.to_enum
     end
   end
 end

# [1, 2, 3, 5].randomly{|a| puts a }
en = [1, 2, 3, 5].randomly
en.each{|e| puts e}
