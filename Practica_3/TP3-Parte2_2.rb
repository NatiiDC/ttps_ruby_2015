# ANDA :)

#Dado los siguientes tests, escribí el método correspondiente (el que se invoca en cada uno) para
#hacer que pasen:

require 'minitest/autorun'
require 'minitest/spec'

describe '#incrementar' do
  describe 'cuando el valor es numérico' do
    it 'incrementa el valor en un delta recibido por parámetro' do
      x = -9
      delta = 10
      assert_equal(1, incrementar(x, delta))
    end
    it 'incrementa el valor en un delta de 1 unidad por defecto' do
      x = 10
      assert_equal(11, incrementar(x))
    end
  end
  describe 'cuando el valor es un string' do
    it 'arroja un RuntimeError' do
      x = '10'
      assert_raises(RuntimeError) do
        incrementar(x)
      end
      assert_raises(RuntimeError) do
        incrementar(x, 9)
      end
    end
  end
end

describe '#concatenar' do
  it 'concatena todos los parámetros que recibe en un string, separando por es
  pacios' do
    class Dummies; end
    assert_equal('Lorem ipsum 4 Dummies', concatenar('Lorem', :ipsum, 4, Dummies))
  end
it 'Elimina dobles espacios si los hubiera en la salida final' do
  assert_equal('TTPS Ruby', concatenar('TTPS', nil, '   ', "\t", "\n", 'Ruby'))
end
end


def incrementar(x, delta=1)
  begin
    a = x + delta
  rescue
    raise RuntimeError
  end
  a
end

def concatenar(*arg)
  s = arg.map{|elem| (elem.to_s.strip)}
  s.delete("")
  s.join(' ')
end
