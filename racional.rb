# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  
  attr_reader :x, :y
  
  def initialize(numerador, denominador)
    
    @num,@den = numerador,denominador
   
    end
  
  def to_s
    
    "(#{@num},#{@den})"
    
  end
  
  def suma (numerador,denominador)
    aux=numerador+@num
    if denominador == @den
      p3=Fraccion.new(aux, denominador)
    else
	 nden=gcd(denominador,@den)
      p3=Fraccion.new(aux, nden)
    end 
  end
    
    
end



p1=Fraccion.new(3,1).suma(3,1)
p2=Fraccion.new(3,1).suma(3,2)
puts p3.to_s