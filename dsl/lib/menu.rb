class Menu
    attr_accessor :nombre_menu
    
    def initialize(&block)
        @lista_platos= [] 
        if block_given?
            if block.arity == 1
                yield self
            else
                instance_eval(&block)
            end
        end        
    end

def descripcion(valor)
    #nombre del Menu
    @nombre_menu=valor
end


def plato(nombre,*ingredientes)
    
    lista_ingredientes=[]
    ingredientes.each do |x|        
        lista_ingredientes<<Alimentos.new(x,Dsl::TABLA[x],100)
    end
        
    @lista_platos << PlatoCompleto.new(nombre,lista_ingredientes)
end

def [](fila)
    @lista_platos[fila]
end

def fila_columna(fila,columna)
    tmp=@lista_platos[fila].ingredientes
    tmp[columna]
end

def to_s
    
     output = "Menu: #{nombre_menu} \n"
     output << "#{'=' * output.size}\n"
     @lista_platos.each do |valor|
             output << "Ingredientes: " << valor.nombre_plato << "\n"
            valor.ingredientes.each do |x|
                output << x.nombre << "\n"
            end
        
     end

output
end

end
