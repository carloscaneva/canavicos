def validarLetra(letra)
	valido = $ahorcado.validarLetra(letra)
	if (valido == "bien")
		erb :ganador
	elsif (valido == "mal")
		erb :ahorcado
	else
		erb :error
	end


end
