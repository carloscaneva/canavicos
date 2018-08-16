require 'sinatra'
require './lib/validar'
require './lib/adivina'


get '/nuevo' do	
    $ahorcado = Adivina.new
    erb :ahorcado
end

get '/' do	
    erb :ahorcado
end


post '/validar' do
	@letra= params[:campo_letra] 
	validarLetra(@letra)
end

post '/reintentar' do
	$ahorcado = Adivina.new	
        erb :ahorcado
end




