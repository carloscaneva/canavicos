def validarLetra(letra)
	if (letra.upcase == "A")
	  erb :ganador
	else
	  #erb :ahorcado
erb :error
	  #@intentos_realizados -= 1
	  #if (@intentos_realizados >= @intentos_maximos)
	#	erb :error
	#  end
	end

end
