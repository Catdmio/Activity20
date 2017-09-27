module Formula
  def Area(l1, l2)
    l1 * l2
  end

  def perimetro(l1, l2)
    2 * (l1 + l2)
  end
end

class Rectangulo
  attr_reader :largo, :ancho
  include Formula

  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    "Los lados son: #{@largo}, #{@ancho}"
  end
end

class Cuadrado
  include Formula

  def initialize(lado)
    @lado = lado
  end

  def lados
    "Los lados son #{@lado}"
  end
end
