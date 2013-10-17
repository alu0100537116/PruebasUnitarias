# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  
  attr_reader :num, :den
  
  def initialize(numerador, denominador)
    
    @num,@den = numerador,denominador
   
    end
  
  def to_s
    
    "(#{@num}/#{@den})"
    
  end
  
  def reduccion
    com_div = gcd(@num,@den)
    @num=@num/com_div
    @den=@den/com_div
    Fraccion.new(@num,@den)
  end
  
  def suma (numerador,denominador)
      if denominador == @den
	  aux=numerador+@num
	  p3=Fraccion.new(aux, denominador)
      else
	  numaux=(@num*denominador)+(numerador*@den)
	  denaux=@den*denominador
	  p3=Fraccion.new(numaux, denaux)
      end 
    p3.reduccion
   end
   
  def resta (numerador,denominador)
    if denominador == @den
	  aux=numerador-@num
	  p3=Fraccion.new(aux, denominador)
      else
	  numaux=(@num*denominador)-(numerador*@den)
	  denaux=@den*denominador
	  p3=Fraccion.new(numaux, denaux)
      end 
    p3.reduccion
    
  end
    
  def producto(numerador,denominador)
    
    aux1=@num*numerador
    aux2=@den*denominador
    p3=Fraccion.new(aux1,aux2)
    p3.reduccion
    
  end
  
  def division(numerador, denominador)
    aux1=@num*denominador
    aux2=@den*numerador
    p3=Fraccion.new(aux1,aux2)
    p3.reduccion
  end
end

# 
# puts Fraccion.new(3,5).suma(3,3) # SUMA (3/3 + 3/5)
# puts Fraccion.new(2,2).resta(4,2) # RESTA (4/2 - 2/2)
# puts Fraccion.new(4,2).producto(3,3) # MULTIPLICA (2/2 * 3/3)
# puts Fraccion.new(2,2).division(4,2) # DIVIDE (/2) / (2/2)