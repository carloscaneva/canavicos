require 'sinatra'
require './lib/validar'

get '/' do
    erb :ahorcado
end

post '/' do
    erb :ahorcado
end

post '/validar' do
	@letra= params[:campo_letra] 
	validarLetra
end
