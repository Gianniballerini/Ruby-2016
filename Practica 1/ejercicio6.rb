def words_from_string(string)
  string.downcase.scan(/[\w']+/)
  # pone todo en minuscula (downcase) 
  # y despues crea un arreglo con la expresion regular esa
  # el ' esta por las palabras tipo let's 
  # otra forma util:
  # %W(#{string.downcase})
end

def contar(string, wantedString)
	a = words_from_string(string).select { |x| x == wantedString }
	return a.length
end

puts contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")