def validarLetra
	if (@letra.upcase == "A")
	  erb :ganador
	else
	  erb :ahorcado
	end

end
