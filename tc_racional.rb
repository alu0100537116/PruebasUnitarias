# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
  
  def test
  
    assert_equal("(8/5)",( Fraccion.new(3,5).suma(3,3)).to_s)
    assert_equal("(1/1)",( Fraccion.new(2,2).resta(4,2)).to_s)
    assert_equal("(2/1)",( Fraccion.new(4,2).producto(3,3)).to_s)
    assert_equal("(1/2)",( Fraccion.new(2,2).division(4,2)).to_s)
  
  end
  

end

              
