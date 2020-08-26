require "probargemamatrices/version"
require "matrices/matrizmultidimensional"
module Probargemamatrices
  class Error < StandardError; end
  # Your code goes here...
      #matriz multidimensional númerica de dos dimisiones solo numérica  
      numeros=[[1, 2, 3], [4, 5, 6], [7 , 8, 9]]

      #matriz multidimensional string de dos dimensiones de cadenas.
      cadenas=[["uno","dos","tres"],["cuatro","cinco","seis"],["siete","ocho","nueve"]]
      
      #matriz multidimensional de objectos varios de dos dimensiones de multiples clases.
      varios=[["uno",2,"tres"],["cuatro",5,"seis"],["siete",[1,2,3],"nueve"]]
   puts "Creación objeto de la clase MatrizMultiDimensional"
  puts "Matriz mm_varios objetos VARIOS con argumento formato matriz como ruby"  
  puts "Matriz con nombre mm_varios:"
  mm_varios = MatrizMultiDimensional.new(varios)
  puts mm_varios
end
