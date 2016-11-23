require 'bundler'
Bundler.require

require_relative 'Tachador'
require_relative 'CountXs'


use CountXs
use Tachador

get '/' do

	array = Array.new
	array << "* GET /mcm/:a/:b calcula y presenta el mínimo común múltiplo de los valores numéricos :a y :b "
	array << "* GET /mcd/:a/:b calcula y presenta el máximo común divisor de los valores numéricos :a y :b "
	array << "* GET /sum/* calcula la sumatoria de todos los valores numéricos recibidos como parámetro en el splat "
	array << "* GET /even/* presenta la cantidad de números pares que hay entre los valores numéricos recibidos como parámetro en el splat "
	array << "* POST /random presenta un número al azar"
	array << "* POST /random/:lower/:upper presenta un numero al azar entre :lower y :upper"
	array.join("<br>")

end

get '/mcm/:a/:b' do
	mensaje = Array.new
	mensaje << 'El Minimo común multiplo es: '
	# a = params[:a].to_i
	# b = params[:b].to_i
	mensaje <<  params[:a].to_i.lcm(params[:b].to_i)
	mensaje.join("<br>")
end

get '/mcd/:a/:b' do
	mensaje = Array.new
	mensaje << 'El Maximo común divisor es: '
	# a = params[:a].to_i
	# b = params[:b].to_i
	mensaje <<  params[:a].to_i.gcd(params[:b].to_i)
	mensaje.join("<br>")
end

get '/sum/*' do
	mensaje = Array.new
	mensaje << 'la suma de los valores recibidos es: '
	mensaje << params['splat'].first.split('/').inject(0){|sum,x| sum + x.to_i }
	mensaje.join('<br>')
end

get '/even/*' do
	mensaje = Array.new
	mensaje << 'La cantidad de Numeros pares en los valores dados es de: '
	mensaje << params['splat'].first.split('/').select { |num|  num.to_i.even?  }.length
	mensaje.join('<br>')
end

post '/random' do
	rand().to_s
end

post '/random/:lower/:upper' do
	mensaje = Array.new
	mensaje << "El numero random entre #{params[:lower]} y #{params[:upper]} es:"
	mensaje << rand(params[:lower].to_i..params[:upper].to_i)
	mensaje.join('<br>')
end


