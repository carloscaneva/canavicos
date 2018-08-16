require 'sinatra'
require './lib/validar'
require './lib/adivina'


get '/comenzar' do	
    erb :bienvenida
end

post '/nuevo' do	
    $ahorcado = Adivina.new(nil)
    erb :ahorcado
end

get '/nuevo' do	
    $ahorcado = Adivina.new(nil)
    erb :ahorcado
end

get '/test' do	
    $ahorcado = Adivina.new("A")
    erb :ahorcado
end

get '/' do	
    #erb :ahorcado
   erb :bienvenida
end


post '/validar' do
	@letra= params[:campo_letra] 
	validarLetra(@letra)
end

post '/reintentar' do
	$ahorcado = Adivina.new(nil)
        erb :ahorcado
end

post '/comenzar' do
	$ahorcado = Adivina.new(nil)
        erb :ahorcado
end








