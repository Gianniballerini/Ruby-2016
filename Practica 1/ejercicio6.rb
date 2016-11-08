def words_from_string(string)
  string.downcase.scan(/[\w']+/) 
  # pone todo en minuscula (downcase) 
  # y despues crea un arreglo con la expresion regular esa
  # el ' esta por las palabras tipo let's 
end

def contar(string, wantedString)
	a = words_from_string(string).select { |x| x == wantedString }
	return a.length
end