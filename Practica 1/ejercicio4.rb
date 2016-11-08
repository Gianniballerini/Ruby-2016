
def horaEnPalabras (numero)
	case numero
		when 1, 13
			hora = "la una"
		when 2, 14
			hora = "las dos"
		when 3, 15
			hora = "las tres"		
		when 4, 16
			hora = "las cuatro"		
		when 5, 17
			hora = "las cinco"
		when 6, 18
			hora = "las seis"
		when 7, 19
			hora = "las siete"
		when 8, 20
			hora = "las ocho"
		when 9, 21
			hora = "las nueve"		
		when 10, 22
			hora = "las diez"		
		when 11, 23
			hora = "las once"
		when 12, 0, 24
			hora = "las doce"	
	end
	return hora
end

def enPalabras (laHora)
	horaNumero = laHora.hour
	case laHora.min
		when 0..10 
			puts "son " + horaEnPalabras(horaNumero) + " en punto"
		when 11..20
			puts "son " + horaEnPalabras(horaNumero) + " y cuarto"
		when 21..34
			puts "son " + horaEnPalabras(horaNumero) + " y media"
		when 35..44
			puts "son " + horaEnPalabras(horaNumero + 1) + " menos veinticinco"
		when 45..55
			puts "son " + horaEnPalabras(horaNumero + 1) + " menos cuarto"
		when 56..59
			puts "casi son " + horaEnPalabras(horaNumero + 1)
	end
end

enPalabras(Time.now)