#require 'pry'
# class Madre
#      @comor2="adios2"
#      @@comor3="adios3"
#     attr_accessor :nombre

 

#     def metodo        
#         @comor2="que pasa"
#         puts "estoy en metodo"
#         Madre.interno
#     end

#   def self.interno
#        puts @comor2
#        puts @nombre
#     end 

# end

# class Hija < Madre
#     def saluda
#         valor=@nombre        
#         puts "hola #{valor}, #{@comor2}"
#         puts @@comor3
#         metodo
#     end
    
    
# end

# obj= Madre.new
# obj.nombre="tyson"
# obj.metodo


# a = -> (valor) do 
#      puts valor
#     end
# a.call("que dices")

# module Valor   
#   @@hola2="variable de clase de modulo"
#   @hola1="variable de instancia de modulo" 
#      def metodo
#          @hola="variable instancia saludo digo hola #{@@hola2} - #{@hola1}"
#          @hola
#      end    
#    def self.metodolocal
#        puts @hola1
#        end

#      puts "Esto es desde el módulo #{@hola1}"
#      puts "Esto es desde el modulo #{@@hola2}"
#  end
#  class Clase
#      puts "Esto es desde la clase"
#      include Valor
#      @variable2="variable de instancia de clase"
#      def self.metodo1
#          @variable="variable de instancia o de instancia de clase"
#      end
#      def metodo2
         
#          puts @@hola2
#          self.class.metodo3
#      end
#      def self.metodo3
#          puts @hola1
#          puts self.@variable2
#          Valor::metodolocal
#      end
   
#  end

# #Valor.metodo
#  a=Clase.new
#  puts a.metodo
#  puts a.metodo2
 #Clase.metodo3
 
# class Clase
#     @variable="hola"
#     def self.metodo
#         puts @variable
#     end
    
# end


# a=Clase.new

# def accessor_pair(initialValue=nil)
#   @value = initialValue  # A local variable shared by the returned lambdas.
#   getter = Proc.new { @value }          # Return value of local variable.
#   setter = Proc.new {|x| @value = x }   # Change value of local variable.
#   return getter,setter               # Return pair of lambdas to caller.
# end

# getX, setX = accessor_pair(0) # Create accessor lambdas for initial value 0.
# puts getX[]        # Prints 0. Note square brackets instead of call.
# setX[10]           # Change the value through one closure.
# puts getX[]        # Prints 10. The change is visible through the other.

# def metodo
#     @value=23
# end

# metodo
# puts getX.call
# puts @value

# class A
#   @value = 1
#   def self.value 
#     @value
#   end
# end

# puts A.value  # 1

# class B < A
#   #@value = 2
# end

# puts A.value  # 1
# puts B.value  # 2

# class C < A; @value = 3; end

# puts B.value # 2
# puts C.value # 3
# class S  
#   def m  
#     puts 'Clase S, metodo m:' 
#     puts self # <S:0x2835908> 
#   end  
# end  
# s = S.new  
# s.m

# hola="hdasfaola"
# eval "puts \"ola\""

# class Clase
#     def metodo1
#         puts "hola"
#     end
#     def Clase.metodo2
#         puts "adios"
#         metodo1
#     end
    

#  end
# Clase.metodo2
# a=Clase.new
# a.metodo1
# Clase.instance_eval { |x|
#     puts "que pasa"
#     def metodo2 

#          puts "adios"
#  end }
#  Clase.metodo2
#  Clase.class_eval do
#      def metodo3
#         # puts "que pasa"
#         end
        
#  end

#  a.metodo3

    #    class Recipe
    #      attr_accessor :name, :ingredients, :instructions
       
    #      def initialize(name, &block)
    #        self.name = name
    #        self.ingredients = []
    #        self.instructions = []
       
    #        instance_eval &block
    #     end
      
    #     def to_s
    #       output = name
    #       output << "\n#{'=' * name.size}\n\n"
    #       output << "Ingredients: #{ingredients.join(', ')}\n\n"
      
    #       instructions.each_with_index do |instruction, index|
    #         output << "#{index + 1}) #{instruction}\n"
    #       end
      
    #       output
    #     end

      

    #    def ingredient(name, options={})
    #       ingredient = name
    #       ingredient << " (#{options[:amount]})" if options[:amount]
      
    #       ingredients << ingredient
    #     end
      
    #     def step(text, options = {})
    #       instruction = text
    #      instruction << " (#{options[:for]})" if options[:for]
      
    #       instructions << instruction
    #     end
      
    #     def amount 
    #      :amount 
    #     end
      
    #     def during 
    #      :for
    #     end
    #   end   

    #         def metodo name,valor
    #             puts "#{name}, #{valor}"
    #     end  
    #  metodo "hola", "adios"

    #   puts Recipe.new("Noodles and Cheese") {
    #     ingredient "Water", amount => "2 cups"
    #     ingredient "Noodles" ,amount => "1 cup"
    #     ingredient "Cheese" , amount => "1/2 cup"
      
    #     step "Heat water to boiling.",        during => "5 minutes"
    #     step "Add noodles to boiling water.", during => "6 minutes"
    #     step "Drain water."
    #     step "Mix cheese in with noodles."
    #   }

    # def metodo
    #         instance_eval {
    #             puts "hola"
    #             def metodo1
    #                 puts "adios"
    #             end
                
    #         }
    # end
    #     metodo
    #     metodo1
    # El método instance_eval de la clase BasicObject 
#    define métodos singleton del objeto
# Por lo tanto, define métodos de clase cuando el objeto es una clase.

# El método class_eval de la clase Module define métodos de instancia

# class Demo
#   def initialize
#     @secret = 99 
#   end
# end

# k = Demo.new
# p k.instance_eval {@secret}

# k.instance_eval {
#     def a_singlenton_method
#          p self 
#          #%q{hello}
#         end 
#     }
# p k.a_singlenton_method

# Demo.instance_eval do
#   def a_class_method
#     self
#   end
# end

# p Demo.a_class_method

# class Demo
#   def initialize
#     @secret = 99 
#   end
# end

# Demo.class_eval {
#   def a_instance_method
#     self
#   end
# }

# k = Demo.new
# p k.a_instance_method

# p self
# self

# class Clase1
    
#     p self
#     def Clase1.metodo
#         p self
#     end
# end

# Clase1.metodo

# class Recipe
#   attr_accessor :name, :ingredients, :instructions

#   def initialize(name, &block)
#     @name = name
#     @ingredients = []
#     @instructions = []

#     if block_given?  
#       if block.arity == 1
#         yield self
#       else
#        instance_eval(&block) 
#       end
#     end
#   end

#   def to_s
#     output = @name
#     output << "\n#{'=' * @name.size}\n\n"
#     output << "Ingredients: #{@ingredients.join(', ')}\n\n"

#     @instructions.each_with_index do |instruction, index|
#       output << "#{index + 1}) #{instruction}\n"
#     end

#     output
#   end

#   def ingredient(name, options = {})
#     ingredient = name
#     ingredient << " (#{options[:amount]})" if options[:amount]

#     @ingredients << ingredient
#   end

#   def step(text, options = {})
#     instruction = text
#     instruction << " (#{options[:during]})" if options[:during]

#     @instructions << instruction
#   end
# end

# mac_and_cheese = Recipe.new("Noodles and Cheese") do 
#   ingredient "Water",   :amount => "2 cups"
#   ingredient "Noodles", :amount => "1 cup"
#   ingredient "Cheese",  :amount => "1/2 cup"

#   step "Heat water to boiling.",        :during => "5 minutes"
#   step "Add noodles to boiling water.", :during => "6 minutes"
#   step "Drain water."
#   step "Mix cheese in with noodles."
# end

# puts mac_and_cheese

# puts [1,2,3,4,5].select { |num|  num.even?  } 

# @hola="que dices"
# def metodo
#     puts @hola
# end
# metodo

# @valores= %w[1 2 Hola 3 Adios ]
# def each
#      n=0    
#      while  n < @valores.size
#         yield @valores[n]
#         n=n+1
#       end
# end

# def collect &block
    
#     each &block


# end

# each do |valor|
#     p valor
# end

# collect do |valor|
#     p valor.to_i
# end

# class Clase1
#     attr_accessor :valor
#     #include Enumerable
#     def initialize
#         @valor=%w[1 2 Hola 3 Adios ]
#     end

#     def each 
#     n=0    
#       while  n < valor.size
#          yield valor[n]
#          n=n+1
#        end
#     #valor
#     end
    
#     # def collect 
#     #    valor=each {}
#     #    n=0           
#     #    new_array=[]
#     #   while  n < valor.size
#     #      tmp=yield valor[n] if block_given? 
#     #      new_array[n]= tmp
#     #      n=n+1
#     #    end
#     #    p "ultimo valor #{tmp}"
#     #     new_array

#     # end
#     def collect 
#         new_array=[]
#         each do |valor|
#            new_array <<  yield(valor)
#         end
#         new_array
#     end
    
# end

# obj=Clase1.new
# new_valor=obj.collect do 
#     "cat"
# end
# p obj.valor
# p new_valor

# valor=1
# if valor==8
#     p valor
# elsif valor==1
#         p "valor 1"
#     else
#         p "error"
# end
# def option valor
#     p valor.class.name
#         if "#{valor.class}" == "Hash"
#             p "es un hash"
#         end
        
#     end

# option a: 'hola',b:2

# class Clase1
#     attr_accessor :x
#     def initialize(x)
#         @x=x
#     end
    
#     #include Comparable
#      def name= valor 
#          p "que dices #{valor}"
#          nil
#      end
    
# end

# a=Clase1.new("hola")

# p a.name = "adios"

#  p 1.eql? 1

# def metodo param
#     p param
# end

# def metodo2 param2
#     param2
# end

# metodo metodo2 "valor"
# class Point
#   attr_reader :x, :y
  
#   def initialize(x,y)
#     @x, @y = x, y
#   end
  
#   #metodos de instancia
#   def *(value)
#     Point.new(@x * value, @y * value)
#   end
  
#   def -@
#     Point.new(-@x, -@y)
#   end
  
#   def +(other)
#     Point.new(@x + other.x, @y + other.y)
#   end
  
#   #constante
#   ORIGIN = Point.new(0,0)

#   def to_s
#     "(#{@x}, #{@y})"
#   end
  
# end

# #Herencia
# class Point3D < Point
#   attr_reader :z
#   def initialize(x,y,z)
#     super(x,y)
#     @x = 'invalidada'
#     @y = 'invalidada'
#     @z = z
#   end

#   def to_s
#     "(#{@x}, #{@y}, #{@z})"
#   end
  
#   #constante
#   ORIGIN = Point3D.new(0,0,0)
# end

# p0 = Point::ORIGIN
# p1 = Point.new(1,1)
# p2 = Point.new(2,2)

# puts p0,p1,p2
# puts p1 + p2

# p03d = Point3D::ORIGIN
# p13d = Point3D.new(1,1,1)
# p23d = Point3D.new(2,2,2)

# puts p03d, p13d, p23d
# puts p13d + p23d

# module Modulo
#     def metodo
#         puts "ola"
#     end
    
# end

# class Clase1

#     class << self
#         include Modulo
#     end
    
#     def Clase1.metodo1
#     end
#     def metodo_instancia
#     end
    
# end
# Clase1.metodo
# binding.pry

 

# class Point
#   attr_accessor :x, :y

#  @@number_of_points=8

#   #las variables de instancia de la clase 
#    @number_of_points = 0
#    @sum_of_x = 0
#    @sum_of_y = 0
  
#   def initialize(x,y)
#     @x, @y = x, y
#     if defined?(@@number_of_points)
#         @@number_of_points += 1
#     else 
#         @@number_of_points=1
#     end
    
#     #no se pueden usar en un método de instancia
#     #@number_of_points += 1
#     #@sum_of_x += x
#     #@sum_of_y += y
#   end
  
#   #metodos de instancia
#   def *(value)
#     Point.new(@x * value, @y * value)
#   end
  
#   def -@
#     Point.new(-@x, -@y)
#   end
  
#   def +(other)
#     Point.new(@x + other.x, @y + other.y)
#   end
  
#   def to_s
#     "(#{@x}, #{@y})"
#   end

#   # métodos de clase
#   # variables de clase usadas en métodos de clase
#   def self.count
#     @@number_of_points
#   end

#   #def self.report
#   #def Point.report
#   class << self
#     attr_accessor :number_of_points, :sum_of_x, :sum_of_y
#     def new(x,y)
#       #se usan las variables de instancia de la clase
#       @number_of_points +=1
#       @sum_of_x += x
#       @sum_of_y += y

#       super  #se invoca a la definición real de new para crear un punto
#     end
#     def report
#       puts "nro. puntos #{@number_of_points}"
#       puts "suma x #{@sum_of_x}"
#       puts "suma y #{@sum_of_y}"
#     end
#   end

#   def no_se_puede
#     # se usan las variables de instancia de la clase en un método de instancia
#     puts "nro. puntos #{@number_of_points}"
#     puts "suma x #{@sum_of_x}"
#     puts "suma y #{@sum_of_y}"
#   end
# puts "primer putno #{Point.number_of_points}"

#   #constante
#   ORIGIN = Point.new(0,0)
# puts Point.number_of_points
  
# end


# p0 = Point::ORIGIN
# p1 = Point.new(1,1)
# p2 = Point.new(1,1)

# puts p0,p1,p2
# puts p1 + p2

# Point.report

# puts "=======================\n"

# p1.no_se_puede

# p Point::ORIGIN.x
# puts Point::ORIGIN
# puts p0
# puts p1
# puts p2

# puts p0 == Point::ORIGIN
# puts p1 == p2
# puts p0.eql? Point::ORIGIN
# puts p0.equal? Point::ORIGIN

# Point::ORIGIN.x=10
# p1.x=10

# puts Point::ORIGIN.x 
# puts p1.x

# puts Point.number_of_points

# puts Point.count

# Las variables de instancia se evaluan siempre en referencia a self.
# Las variables de clase     se evaluan en referencia al objeto Class que se crea.

# class Point
#   attr_reader :x, :y

#   #las variables de clase se inicializan en la propia clase
#   @@number_of_points = 0
#   @@sum_of_x = 0
#   @@sum_of_y = 0
  
#   def initialize(x,y)
#     @x, @y = x, y

#     #se pueden usar las variables de clase en un método de instancia
#     @@number_of_points += 1
#     @@sum_of_x += x
#     @@sum_of_y += y
#   end
  
#   #metodos de instancia
#   def *(value)
#     Point.new(@x * value, @y * value)
#   end
  
#   def -@
#     Point.new(-@x, -@y)
#   end
  
#   def +(other)
#     Point.new(@x + other.x, @y + other.y)
#   end
  
#   def to_s
#     "(#{@x}, #{@y})"
#   end

#   # métodos de clase
#   # variables de clase usadas en métodos de clase
#   def self.count
#     @@number_of_points
#   end

#   #def self.report
#   #def Point.report
#   class << self
#     def report
#       puts "nro. puntos #{@@number_of_points}"
#       puts "suma x #{@@sum_of_x}"
#       puts "suma y #{@@sum_of_y}"
#     end
#   end

#   #constante
#   ORIGIN = Point.new(0,0)
  
# end

# #Herencia
# class Point3D < Point
#   attr_reader :z

#   #variable de clase
#   @@sum_of_z = 0

#   def initialize(x,y,z)
#     super(x,y)
#     @z = z

#     #se usa en un método de instancia
#     @@sum_of_z += z
#   end

#   def to_s
#     "(#{@x}, #{@y}, #{@z})"
#   end
  
#   def metodo
#       puts "valor : #{@@number_of_points}"
#   end
#   #constante
#   ORIGIN = Point3D.new(0,0,0)

#   class << self
#     def report
#       self.superclass.report
#       puts "suma z #{@@sum_of_z}"
#     end
#   end
# end

# p0 = Point::ORIGIN
# p1 = Point.new(1,1)
# p2 = Point.new(2,2)

# puts p0,p1,p2
# puts p1 + p2

# p03d = Point3D::ORIGIN
# p13d = Point3D.new(1,1,1)
# p23d = Point3D.new(2,2,2)

# puts p03d, p13d, p23d
# puts p13d + p23d

# #Point.report
# Point3D.report

# p03d.metodo

# Point3D::ORIGIN2 ="que dices"
# p Point3D::ORIGIN2

# class Clase1
#     def intimo
#         puts "intimo desde clase1"
#     end
#     def toto
#         intimo
#     end
    
# end

# class Clase2 < Clase1
#     def intimo
#         puts "intimo desde clase2"
#     end
    
# end

# a=Clase2.new
# a.toto
#class A
# @@value = 1
# def A.value
# @@value
# end
# end
# puts A.value
# class B < A
# @@value = 2
# end
# puts A.value
# puts B.value
# class C < A; @@value = 3; end
# puts B.value
# puts C.value

# class A
#     @value = 1
#     def self.value
#     @value
#     end 
# end

# puts A.value
# class B < A
#     @value = 2
# end

# puts A.value
# puts B.value

# class C < A
#      @value = 3
# end
# puts B.value
# puts C.value

# class Clase1
#     def self.metodo
#     p self
# end
#     def metodo
#         p self
#     end
    
# end
# Clase1.metodo
# Clase1.new.metodo
# class AClass
# def m
# 'method'
# end
# end
# obj = AClass.new
# def obj.s1
# 'method s1'
# end
# class << obj
# def s2
# 'method s2'
# end
# end
# puts obj.m
# puts obj.s1
# puts obj.s2

# z =class << String; self end
# p z
# class Clase1
#     p "hola"
# end

# class << Clase1
# def Clase1.interno
#     p "metodo de clase"
# end
# end
# Clase1.interno
# binding.pry
# module Kernel
# A=B=C=D=E=F="defined in Kernel"
# end
# #Top level or global constant defined in Object
# A=B=C=D=E="defined at top-level"
# class Super
# A=B=C=D="defined in superclass"
# end
# module Included
# A=B=C="defined in included module"
# end
# module Enclosing
# A=B="defined in enclosing module"
# class Local < Super
# include Included
# A = "defined locally"
# search = (Module.nesting + self.ancestors + Object.ancestors).uniq
# puts A
# puts B
# puts C
# puts D
# puts E
# puts F
# puts search
# end
# end
# def a_method
# s = "message"
# a = 1
# b = 2.0
# return a, b, 3, 'fou', s, 6*10
# end
# a,b,c= a_method
# p a
# p b
# p c 

# def a_method (a=10,b=20,c=100,*d)
#     return a,b,c,d
# end
# p a_method(1,2,3,4,5,6)
# class MyClass
# def initialize(x,y)
# @x, @y = x, y
# end
# def polar(x,y)
# Math.hypot(y,x); Math.atan2(y,x)
# end
# end

#  s = 'message 1'
#  r = 'message 2'

#  def s
#  'message from s'
#  end

#  def r
#  'message from r'
#  end

#  def t(x)
#  "#{x}"
#  end

#  puts(r)
#  puts r
#  puts r()
#  puts (t(s))
# #  puts (t(s()))
# def tutu(n,m, &b) b.call() end
# tutu(2,{:a =>1, :b =>2}) { puts "hello" }
# array = [1,2,3,4]
 
# def array.iterator!
#     new_array=[]
#     each do |x|
#      new_array << yield(x)
#     end
# #self << new_array
# end

# valor=array.iterator! do |n|
#  n ** 2
#  end

# puts array
# #puts valor

#  def a_method
#  yield 2
#  end

#  x = 1
#  a_method { |y;x| x=y}
#  puts x
# class Clase1
#     @@variable_clase=2
#     def self.metodo
#         puts @@variable_clase
#     end
#     def metodo
#         puts @@variable_clase
#     end
    
# end
# class Clase2 < Clase1
#     #@@variable_clase=8
#     def self.metodo
#         puts @@variable_clase
#         super
#     end
# end

# Clase2.metodo

# class Clase1    
#     attr_accessor :x , :y
# end
# Clase1= Struct.new(:x,:y)
# a= Clase1.new
# a.x=2
# p a[:x]
# def metodo
#     return 1,2,3,4
# end

# a=[1,2,4,5]
# p a
# g=a

# p g
# p f
#require 'thread'

# valor="hola"
# y = Thread.new { 4.times { sleep 0.2; puts @valor }}
# sleep 0.6
#puts "que dices"
# def inc(n) 
#     n+1
#   end
#   sum = 0
#   threads = (1..10).map do
#     Thread.new do 
        
#       10_000.times do
#         sum = inc(sum)
#       end
#     end 
#   end
#   threads.each_with_index {|x,index|
#   puts "tarea #{index}"
#    x.join
#    puts sum
   
# }

# sum=0

#  block1=Proc.new  do 
#     sum=sum+1
# end
# block2=Proc.new  do 
#     sum=sum+1
# end

# block1.call
# puts sum

# block2.call
# puts sum
# def join_all
#     main = Thread.main        # The main thread
#     current = Thread.current  # The current thread
#     all = Thread.list         # All threads still running
#     # Now call join on each thread
#     all.each {|t| t.join(0.5) unless t == current or t == main }
#   end
  
#   def inc(n) 
#     n+1
#   end
#   sum = 0
#   mutex = Mutex.new
#   threads = (1..10).map do
#     Thread.new do 
#       10_000.times do
#         mutex.synchronize do
#           sum = inc(sum)
#         end
#       end
#     end 
#   end
#   join_all
#   p sum

# print Thread.main
# print "\n"
# t1 = Thread.new {sleep 100}
# Thread.list.each {|thr| p thr }
# print "Current thread = " + Thread.current.to_s
# print "\n"
# t2 = Thread.new {sleep 100}
# Thread.list.each {|thr| p thr }
# print Thread.current
# print "\n"
# Thread.kill(t1)
# Thread.pass # pass execution to t2 now
# t3 = Thread.new do
# sleep 20
# Thread.exit # exit the thread
# end
# Thread.kill(t2) # now kill t2
# Thread.list.each {|thr| print thr }
# # now exit the main thread (killing any others)
# Thread.exit
# count = 0
# threads = []
# 10.times do |i|
# threads[i] = Thread.new do
# sleep(rand(0.1))
# #Thread.current["mycount"] = count
# count += 1
# end
# end
# threads.each {|t| t.join; print t["mycount"], ", "}
# puts "count = #{count}"
# mutex = Mutex.new
# cv = ConditionVariable.new
# a = Thread.new {
# mutex.synchronize {
# print "A: Esta en una region critica, esperando por cv\n"
# cv.wait(mutex)
# Thread.pass
# print "A: Esta en la region critica de nuevo!. Sigue\n"
# }
# }
# print "En medio\n"
# b = Thread.new {
# mutex.synchronize {
# puts "B: Esta en la region critica pero tiene a cv"
# Thread.pass
# cv.signal
# puts "B: Esta en la region critica, Saliendo"

# }
# }
# a.join
# b.join

#require 'pry'
# module Kernel    
#     A=B=C=D=E="defined in Kernel"
#   end
  
# module Otro
#     D="Desde otro"
# end

#   class Super
#     include Otro
#     A=B=C=D="defined in superclass"
#   end
  
#   module Included
#     A=B=C="defined in included module"
#   end
  
#   #Top level or global constants defined in Objetc
#   A=B=C=D=E="defined at top-level"
  
#   module Enclosing
#    A=B="defined in enclosing module"
#    class Local < Super
#      include Included
#      A = "defined locally"

#         puts A
#         puts B
#         puts C
#         puts D
#         puts E
#    end
#   end
# binding.pry
# a_object = [1, { :uno => 1}]

# p a_object.class

# p a_object.class.superclass

# p a_object.instance_of? Object

# p a_object.instance_of? Array

# p a_object.is_a? Object

# p a_object.is_a? Array

# p a_object.respond_to? :each

# l = Array.instance_methods(false)
# p l.length
# p l

# t = Array.instance_methods(true)
# p t.length
# p t

#  module ModuloIncluido
#     # def metodo1
#     # end
#  end

# module ModuloExterno 
#   include ModuloIncluido
# end

# class UnaClase
#   include ModuloExterno 
#    def UnaClase.metodo2
#    end
# #   def metodo3
# #   end
# end

# p UnaClase.instance_methods(true).size

# p UnaClase < ModuloExterno
# p ModuloExterno < ModuloIncluido
# p UnaClase < ModuloIncluido

# p Integer < Numeric
# p Integer < Comparable

# p ModuloIncluido.ancestors 
# p ModuloExterno.ancestors
# p UnaClase.ancestors
# p Integer.ancestors

# p UnaClase.include? ModuloExterno
# p UnaClase.include? ModuloIncluido
# p ModuloExterno.include? ModuloIncluido
# p ModuloIncluido.include? ModuloIncluido
# p ModuloIncluido.include? ModuloExterno

# p ModuloIncluido.included_modules
# p ModuloExterno.included_modules
# p UnaClase.included_modules 

# p Module.instance_methods(true).select {|x| x =~ /include/ }
# p Module.private_methods.select {|x| x =~ /include/ }
# a=UnaClase.new
# puts Class.instance_methods(false)
# puts "module #{Module.instance_methods(false)}"
#p a.ancestors
#p a.class
#p a.class.ancestors

# class Clase1
#     def metodo1
#     end
#     def Clase1.metodo1
#     end
# end

# binding.pry

# VALOR=2
# class Clase
#         VALOR="adios"
#         puts VALOR

#         puts ::VALOR
# end

# puts VALOR
# puts Clase::VALOR
# p VALOR
# module AModule
#     def self.a_method
#       "AModule a_method"
#     end
#     def metodoins
#     end
#   end
  
#   class AClass
#     include AModule
#     def AClass.metodo1
#     end
#     def metodo2
#     end

#   end
#   p AModule.instance_methods true
#   p AModule.singleton_class.instance_methods true
  
#   p AClass.ancestors
  
#   #eigenclass_of_AClass = class << AClass; self; end
#   eigenclass_of_AClass = AClass.singleton_class
  
  
#   p eigenclass_of_AClass.ancestors
#   p AClass.instance_methods(false)
#   a= AClass.new
#   def a.metodo3
#   end
#   p a.singleton_class.instance_methods(false)

#   p eigenclass_of_AClass.instance_methods(false)
#   binding.pry

# module AModule
#     def a_method
#       "AModule a_method"
#     end
#   end
  
#   class AClass
#     class << self
#       include AModule
#     end
#   end
  
#   p AClass.ancestors
  
#   #eigenclass_of_AClass = class << AClass; self; end
#   eigenclass_of_AClass = AClass.singleton_class
  
  
#   p eigenclass_of_AClass.ancestors
  
#   p AClass.a_method

# Las clases y los mĂ³dulos son instancias de las clases Class y Module,
# por lo tanto, es posible crearlos dinĂ¡micamente

# M = Module.new
# C = Class.new
# S = Class.new(C) { include M }

# p Module.ancestors
# p Class.ancestors
# p M.ancestors
# p C.ancestors
# p S.ancestors

# class Clase1
#     def self.metodo2
#         puts "metodo2 interno"
#     end
#     def metodo
#         puts "hola desde instancia"
#         Clase1.metodo2
#     end
#     def Clase1.metodo
#         puts "HOLA DESDE SINGLETON CLASS"
#         Clase1.metodo2
#     end
# end
# Clase1.new.metodo
# Clase1.metodo

# class AClass
#     def a_method(a_block)
#     @hello = "I say"
#     puts "[ In AClass.a_method ] "
#     puts "in #{self} object of class #{self.class}, @hello = #{@hello}"
#     puts "[ In AClass.a_method ] when block is called... "
#     a_block.call
#     end
#     end
#     a_closure = lambda {
#     @hello << " append!"
#     puts "in #{self} object of class #{self.class}, @hello = #{@hello}"
#     }
#     def a_method(a_closure)
#     @hello = "hello"
#     a_closure.call
#     end
#     a_method(a_closure)
#     data = AClass.new
#     data.a_method(a_closure)

# def multiplier(n)
#     lambda do |*arr|
#     arr.collect { |i| i*n }
#     end
#     end
# p multiplier(2).call(1,2,3)
#  @valor1="que dices"
# def metodo
#     p self
#     @valor1
# end
# p metodo
# p @valor1
# def metodo2
#     @valor1="adios"
# end
# p metodo2
# p @valor1
# class Clase1
#     @valor="valor de instancia de clase"
#     def initialize
#         @valor="valor de instancia de objeto"
#     end

#     def getbinding
#         return binding
#     end
#     def self.getbinding
#         return binding
#     end

# end

# a=Clase1.new

# Clase1.instance_eval do
#     def metodo_clase
#         @valor
#     end

# end

# a.instance_eval do
#     def metodo_objeto
#         @valor
#     end

# end

# p Clase1.metodo_clase
# p a.metodo_objeto

# p eval("@valor",a.getbinding())
# p eval("@valor",Clase1.getbinding)
# x = 'def met; "a method"; end'

# Clase1.instance_eval do
#     def met
#         "a "
#     end


# end

# p Clase1.met
#class Clase1

#    def element(value)
#        puts "2"
#    end
   
#end