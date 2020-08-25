require "prueba/version"

module Prueba
  class Error < StandardError; end
  # Your code goes here...
end

# class Clase1
#   def initialize
#     @valor="hola"
#   end
#   def metodo2
#     Clase1.class_eval do
#       def metodo
#         puts @valor
#       end
#     end
#   end
# end

# # Clase1.class_eval do
# #   def metodo
# #     puts @valor
# #   end

# # end

# a=Clase1.new
# a.metodo

# a.metodo2

# Clase1= Struct.new(:x,:y)
# Clase2= Struct.new(:x,:y)

# class Clase1
#   include Comparable
#   def <=>(other)
#       x <=> other.x
#   end
# end
# a=Clase1.new(1,2)
# b=Clase2.new(1,2)
# puts a < b
# def coerce other
#   [self,other]
# end

# def show (a_class) 
#     if (a_class != nil) then 
#       puts "#{a_class}:: es hija de = #{a_class.superclass}" 
#       #show(a_class.superclass) 
#     end 
# end
#  show(Fixnum)

class Clase1
  p self
  class << self
    p self
    p ancestors
    def metodo
      p "metodo eigenclass"
      p self
      p ancestors
    end
  end
  def metodo1
    p "metodo instancia"
    p self
    
  end
end

obj=Clase1.new.class.ancestors
p Clase1.ancestors
p Clase1.singleton_class.ancestors

Clase1.metodo
Clase1.new.metodo1


#p obj.singleton_class.instance_method false

p Clase1.instance_methods(false)
p Clase1.singleton_class.instance_methods()
