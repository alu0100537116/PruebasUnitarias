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
    #Fraccion.new(@num/com_div,@den/com_div)
  end
  
  def suma (numerador,denominador)
      if denominador == @den
	  aux=numerador+@num
	  puts " Denominadores iguales "
	  p3=Fraccion.new(aux, denominador)
      else
	  puts " Denominadores diferentes "
	  numaux=(@num*denominador)+(numerador*@den)
	  denaux=@den*denominador
	  p3=Fraccion.new(numaux, denaux)
      end 
    p3.reduccion
    puts p3.to_s
   end
   
  def resta (numerador,denominador)
    if denominador == @den
	  aux=numerador-@num
	  puts " Denominadores iguales "
	  p3=Fraccion.new(aux, denominador)
      else
	  puts " Denominadores diferentes "
	  numaux=(@num*denominador)-(numerador*@den)
	  denaux=@den*denominador
	  p3=Fraccion.new(numaux, denaux)
      end 
    p3.reduccion
    puts p3.to_s
  end
    
end


p1=Fraccion.new(3,5).suma(3,3) # SUMA (3/3 + 3/5)
p2=Fraccion.new(2,2).resta(4,2) # RESTA (4/2 - 2/2)
