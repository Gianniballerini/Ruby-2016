require 'bundler'
Bundler.require


a = { nombre: 'gato', chances: 6, fails: 0, guessed: [], chars: ['g','a','t','o']  }
b = { nombre: 'perro', chances: 6, fails: 0,guessed: [], chars: ['p','e','r','r','o'] }

arregloPalabras = [0,a,b]

post '/' do
	id = rand(1..2)
	redirect to("/partida/#{id}")
end

get '/partida/:id' do
	if arregloPalabras[params[:id].to_i][:chances] == 0	
		"Tas al horno macho, no te quedan chances <br>
		<form method='post' action='/'>
			<input type='submit' value='apreta este boton para buscar una palabra distinta'>
		</form> 
		"
	else
		if 	arregloPalabras[params[:id].to_i][:guessed].length == arregloPalabras[params[:id].to_i][:chars].uniq.length
			"Ya lo adivinaste campeon la palabra era #{arregloPalabras[params[:id].to_i][:nombre]}"
		else
			palabra = []
			arregloPalabras[params[:id].to_i][:chars].each { |letter| 
				if	arregloPalabras[params[:id].to_i][:guessed].include? letter
					palabra << letter
				else
					palabra << " _ "
				end
			}
			"
			Chances Restantes: #{arregloPalabras[params[:id].to_i][:chances]}	<br>
			Intentos Fallidos: #{arregloPalabras[params[:id].to_i][:fails]}	<br>
			Letras Adivinadas: #{arregloPalabras[params[:id].to_i][:guessed]}	<br>
			Tu palabra hasta ahora se ve algo como.... :   #{palabra.join('')}
			<form method='post' action='/'>
				<input type='submit' value='apreta este boton para buscar una palabra distinta'>
			</form> 
			" 
		end
	end
end

put '/partida/:id' do
	if arregloPalabras[params[:id].to_i][:chances] == 0	
		"Tas al horno macho, no te quedan chances <br>
		<form method='post' action='/'>
			<input type='submit' value='apreta este boton para buscar una palabra distinta'>
		</form> 
		"
	else
		if arregloPalabras[params[:id].to_i][:guessed].include? params[:intento]
			redirect to("/partida/#{params[:id]}")
		else
			if arregloPalabras[params[:id].to_i][:chars].include? params[:intento]
				arregloPalabras[params[:id].to_i][:guessed] << params[:intento]
			else
				arregloPalabras[params[:id].to_i][:fails] = arregloPalabras[params[:id].to_i][:fails] + 1
				arregloPalabras[params[:id].to_i][:chances] = arregloPalabras[params[:id].to_i][:chances] - 1
			end
		end
	end
	redirect to("/partida/#{params[:id]}")
end