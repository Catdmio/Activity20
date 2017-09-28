# Ejercicio 2

# Formula que calcula perimetro y area,
# haciendo distincion entre cuadrado y rectangulo

module Formula

  def perimetro
    if self.class.is_a? Cuadrado
      @lado * 4
    elsif self.class.is_a? Rectangulo
      2 * (@largo + @ancho)
    end
  end

  def area
    if self.is_a? Cuadrado
      @lado * @lado
    elsif self.is_a? Rectangulo
      @largo * @ancho
    end
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

# vars.each do |v| puts c2.instance_variable_get v end
