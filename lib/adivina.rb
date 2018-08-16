class adivina
	def initialize()
		@intentos_maximos = 6  
  		@intentos_realizados = 0 
	end	
	def validarLetra(letra)
            if (letra.upcase == "A")
               #ingresar letra en el campo
	       erb :ganador
		
	    else
		@intentos_realizados += 1
		if @intentos_maximos = @intentos_realizados 
			erb :error
		else 
			erb :ahorcado
		end
	   end
	end
end
