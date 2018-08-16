require 'sinatra'
require './lib/validar'
require './lib/adivina.rb'

get '/' do	
    erb :ahorcado
end


post '/validar' do
	@letra= params[:campo_letra] 
	ahoracodo.validarLetra(@letra)
end

post '/reintentar' do
	ahoracodo.new	
        erb :ahorcadoend
end




