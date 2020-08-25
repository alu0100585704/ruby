class Menu
    attr_accessor :nombre_menu, :desc, :precio_total, :platos_menu
    
    def initialize(nombre,platos,&block)
        @lista_platos=platos #hash con clave nombre de plato y valor objeto clase plato
        @platos_menu={} #hash que contendrá como clave el precio, y valor el obtjeto tipo Plato
        if block_given?
            if block.arity == 1
                yield self
            else
                instance_eval(&block)
            end
        end
        @nombre_menu=nombre
    end

def descripcion(valor)
    @desc=valor
end

def precio(valor)
    @precio_total=valor
end

def componente(desc_componente={})
    
    plato=@lista_platos[desc_componente[:descripcion]]
    if  plato != nil        
        @platos_menu[desc_componente[:precio]]=plato        
    else
        puts "Plato con descripcion \"#{desc_componente[:descripcion]}\" no existe"
    end
end

def to_s
    output = "Menu: #{nombre_menu} - #{desc}\n"
    output << "#{'=' * output.size}\n"
    platos_menu.each do |clave,valor|
            output << valor.to_s    
            output << "\n\nPrecio Plato: #{clave} euros\n"
    end
    output << "\n==========================="
    output << "\nPrecio Total del Menu: #{precio_total}"
    output << "\n==========================="
end

end
