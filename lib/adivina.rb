class Adivina
	attr_reader :intentos_maximos, :intentos_realizados, :palabra
	attr_writer :intentos_realizados

	def initialize()
		@intentos_maximos = 6  
  		@intentos_realizados = 0 
		@palabra = "a"
	end	
	def validarLetra(letra)
            if (letra.upcase == "A")
               #ingresar letra en el campo
	       "bien"
	
	    else
		@intentos_realizados += 1
		if @intentos_maximos == @intentos_realizados 
			"game_over"
		else 
			"mal"
		end
	   end
	end
end
