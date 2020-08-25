RSpec.describe Dsl, "Excpectativas globales" do
  it "has a version number" do
    expect(Dsl::VERSION).not_to be nil

  end

end

RSpec.describe Menu, "Expectativas de la clase Menu" do

  before (:all) do
      
    @menu=Menu.new() do 
      descripcion "Menu Estrella"
      plato "Primer Plato", "Tofu", "Cerveza"
      plato "Segundo Plato", "Carne de vaca" ,"Huevos"
      plato "Postre", "Chocolate"
    end
               
   end

   it "Prueba salida nombre del Menu" do
      expect(@menu.nombre_menu).to eq("Menu Estrella")
   end

   context "Prueba salida nombre Menu" do

     it "Valores nutricionales Menu 1" do                                 

       
     end

     
   end
                 
 
end