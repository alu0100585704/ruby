require "dsl/version"
require "dsl/alimentos"
require "dsl/listas"
require "dsl/platoN"
require "dsl/platoCompleto"
require "menu"

module Dsl
  class Error < StandardError; end
  # Your code goes here...
      #tabla de alimentos composición nutricional  por cada  100g
    # e impacto ambiental por cada kg
   #Nombre - proteinas - cabo hidratos - lipidos- GEI(co2 por kilograma diario) - Terreno m2 año(metros cuadrados por kg por año.)

  TABLA = {"Carne de vaca"     => [21.1,0.0,3.1,50.0,164.0],
 'Carne de cordero'          => [18.0,0.0,17.0,20.0,185.0],
 'Camarones (piscifactoria)' => [17.6,1.5,0.6,18.0,2.0],
 'Chocolate'                 => [5.3,47.0,40.0,2.3,3.4],
 'Salmon (piscifactoria)'    => [19.9,0.0,13.6,6.0,3.7],
 'Cerdo'                     => [21.5,0.0,6.3,7.6,11.0],
 'Pollo'                     => [20.6,0.0,5.6,5.7,7.1],
 'Queso'                     => [25.0,1.3,33.0,11.0,41.0],
 'Cerveza'                   => [0.5,3.6,0.0,0.24,0.22],
 'Leche de vaca'             => [3.3,4.8,3.2,3.2,8.9],
 'Huevos'                    => [13.0,1.1,11.0,4.2,5.7],
 'Cafe'                      => [0.1,0.0,0.0,0.4,0.3],
 'Tofu'                      => [8.0,1.9,4.8,2.0,2.2],
 'Lentejas'                  => [23.5,52.0,1.4,0.4,3.4],
 'Nuez'                      => [20.0,21.0,54.0,0.3,7.9]
}
end


menu=Menu.new() do 
  descripcion "Menu Estrella"
  plato "Primer Plato", "Tofu", "Cerveza"
  plato "Segundo Plato", "Carne de vaca" ,"Huevos"
  plato "Postre", "Chocolate"
end

puts menu

puts menu[1]

puts menu.fila_columna(1,2)
