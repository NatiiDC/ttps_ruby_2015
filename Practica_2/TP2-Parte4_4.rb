#NO HACE NADA, NO SE PORQUE

# Suponé que tenés la clase Image detallada más abajo para realizar procesamiento de imágenes.
# Esta clase representa en sí misma una imagen y dispone de métodos para aplicarle diversos filtros
# ( filter_a , filter_b , filter_c , filter_d , filter_e y filter_f ) generando y
# retornando una nueva instancia de Image cada vez que se los invoca. Por ejemplo, el siguiente
# código toma una imagen inicial y retorna otra instancia de Image que representa la imagen original
# con los filtros A , C y E aplicados:


require 'matrix'
class Image
  attr_accessor :data, :size, :filters
  def initialize(data = nil, size = 1024)
    self.size = size
    self.data = data || Matrix.build(size) { Math::PI }
    @filters =[]
  end
  def header_bytes
    filters.each{|ff| ff.call}
    puts Matrix.rows([data.first(size)])
  end
  # Distintos filtros de imágenes:
  def filter_a
    filters << (Proc.new {Image.new data.map { |e| e ** 1.2 }})
    self
  end
  def filter_b
    filters << (Proc.new {Image.new data.map { |e| e ** 1.4 }})
    self
  end
  def filter_c
    filters << (Proc.new {Image.new data.map { |e| e ** 1.8 }})
    self
  end
  def filter_d
    filters << (Proc.new {Image.new data.map { |e| e ** 2 }})
    self
  end
  def filter_e
    filters << (Proc.new {Image.new data.map { |e| e ** 2.2 }})
    self
  end
  def filter_f
    filters << (Proc.new {Image.new data.map { |e| e ** 2.4 }})
    self
  end
  #- Fin de filtros
  def all_filters
    ('a'..'f').inject(self) do |pipe, type|
      pipe.public_send "filter_#{type}"
    end
  end
end


image = Image.new

image.filter_a.filter_c.filter_e
image.filter_a.filter_c.header_bytes
