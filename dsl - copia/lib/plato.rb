
class Plato < PlatoCompleto
    def initialize(&block)        
        @lista_alimentos=Listas.new
        if block_given?
            if block.arity == 1
                yield self
            else
                instance_eval(&block)
            end
        end
        
        super(@nombre_tmp,@lista_alimentos)
    end

 def nombre(nombre)
    @nombre_tmp=nombre
 end


 def alimento(desc_cantidad={})    
    
    alimento_tmp=Alimentos.new(desc_cantidad[:descripcion],Dsl::TABLA[desc_cantidad[:descripcion]],desc_cantidad[:gramos])
    @lista_alimentos.insertHead(alimento_tmp)
 
 end

 def to_s
    output=super
    output
 end

end
