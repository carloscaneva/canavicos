def validarLetra(letra)
	if (letra.upcase == "A")
	  erb :ganador
	else
	  if (@intentos_realizados.nil?)
	     @intentos_realizados = 1
	  else
	     @intentos_realizados += 1
	  end
	  
if (@intentos_maximos.nil?)
@intentos_maximos=6
end
	  if (@intentos_realizados >= @intentos_maximos)
		erb :error
	  else
	 	erb :ahorcado
#erb :error
	  end
	end

end
