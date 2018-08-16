def validarLetra(letra)
	if (not letra.nil?)
		valido = $ahorcado.validarLetra(letra)
		if (valido == "bien")
			erb :ganador
		elsif (valido == "letra_bien")
			erb :ahorcado
		elsif (valido == "mal")
			erb :ahorcado
		else
			erb :error
		end
	end


end
