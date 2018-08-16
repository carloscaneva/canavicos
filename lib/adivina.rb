class Adivina
	attr_reader :intentos_maximos, :intentos_realizados, :palabra, :letras_encontradas
	attr_writer :intentos_realizados

	def initialize(palabra_test)
		@intentos_maximos = 6  
  		@intentos_realizados = 0 
		if (palabra_test.nil?)
			@palabra = "ema".upcase
		else
			@palabra = palabra_test.upcase
		end
		@letras_encontradas = []
	end	
	def validarLetra(letra)
            #if (letra.upcase == "A")
	    
	    indice = @palabra.index(letra.upcase)
	    #guardar = false

guardar = true
	
	    #while (not indice.nil? && @letras_encontradas[indice].nil? && !guardar) do
	#	guardar = true
	 #   end
	
	    if (not indice.nil? && guardar)
               #ingresar letra en el campo
		@letras_encontradas[indice] = letra.upcase

		if (@palabra == @letras_encontradas.join(""))
		       "bien"
		else
			"letra_bien"
		end
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
