require "probargemamatrices/version"
require "matrices/matrizmultidimensional"
module Probargemamatrices
  class Error < StandardError; end
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

 puts "Creación objeto de la clase MatrizMultiDimensional"
 puts "Matriz mm_dsl1 objetos VARIOS con argumento tipo DSL"  
 puts "Matriz con nombre mm_dsl_varios:"
 mm_dsl_varios = MatrizMultiDimensional.new() do
   fila "uno", 2, "tres"
   fila "cuatro", 5, "seis"
   fila "siete", [1,2,3], "nueve"
 end
 puts mm_dsl_varios

 puts "##############################################################################################"
 puts "Matriz mm_cadenas objetos CADENA con argumento formato matriz como ruby"
 puts "Matriz con nombre mm_cadenas:"
 mm_cadenas = MatrizMultiDimensional.new(cadenas)
 puts mm_cadenas

 
 puts "Creación objeto de la clase MatrizMultiDimensional"
 puts "Matriz mm_dsl_cadenas objetos CADENAS con argumento tipo DSL"  
 puts "Matriz con nombre mm_dsl_cadenas:"
 mm_dsl_cadenas = MatrizMultiDimensional.new() do
   fila "uno", "dos", "tres"
   fila "cuatro", "cinco", "seis"
   fila "siete", "siete", "nueve"
 end
 puts mm_dsl_cadenas
 puts "##############################################################################################"
 puts "Matriz mm_numeros objetos tipo NUMEROS con argumento formato matriz como ruby"
 puts "Matriz con nombre mm_numeros:"
 mm_numeros = MatrizMultiDimensional.new(numeros)
 puts mm_numeros

 puts "Creación objeto de la clase MatrizMultiDimensional"
 puts "Matriz mm_dsl_numeros objetos NUMEROS con argumento tipo DSL"  
 puts "Matriz con nombre mm_dsl_numeros:"
 mm_dsl_numeros = MatrizMultiDimensional.new() do
   fila 1, 2, 3
   fila 4, 5.2, 6
   fila 7, 8.4, 9
 end
 puts mm_dsl_numeros

 puts "##############################################################################################"

 puts "Sumamos mm_dsl_varios con mm_dsl_varios"

 puts mm_dsl_varios + mm_dsl_varios


 puts "##############################################################################################"

 puts "Restamos mm_dsl_numeros con mm_dsl_numeros"

 puts mm_dsl_numeros - mm_dsl_numeros

 puts "##############################################################################################"

 puts "Multiplicamos mm_dsl_cadenas por 3"
 puts mm_dsl_cadenas * 3

 puts "##############################################################################################"

 puts "Hallamos la transpuesta de  mm_dsl_numeros"
 puts mm_dsl_numeros.transposed

 puts "##############################################################################################"

 puts "Comparamos dos matrices"  
 puts mm_dsl_numeros.transposed

   #Crear la variable mmn1. 

   mmn1 = MatrizMultiDimensional.new([[1, 2, 3], [4, 5, 6], [7 , 8, 9]])
  
   #Crear la variable mmn2. 
   
   mmn2 = MatrizMultiDimensional.new() do
       fila 1, 2, 3
       fila 4, 5, 6
       fila 7, 8, 9
     end
   
   #Almacenar en mmn3 la suma de mmn1 y mmn2
   
   mmn3 =  mmn1 +mmn2
     
   #Almacenar transpuesta de mmn3 en mmn4.
   
    
 mmn4 = mmn3.transposed
  
   
 #  Almacenar en mmn5 el incremento de 1 a cada posicion y mostrar resultado
   
   mmn5 = mmn4.collect { |valor| valor = valor + 1}
   puts "\nResultado de sumar, transponer y sumar 1 a cada elemento de la matriz, es: \n"
   puts mmn5.to_s
end
