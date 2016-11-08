Escribí una función llamada rot13 que encripte un string 
recibido como parámetro utilizando el algoritmo ROT13 . 
Por ejemplo:

     rot13("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!")
     # => "¡Ovrairavqbf n yn phefnqn 2015 qr GGCF Bcpvóa Ehol!"

# .tr swapea partes de un string (from, to) aca seria, de la A a la Z pasala a N a la M (N-ZA-M)

def rot13(string)
	puts string.tr 'A-Za-z', 'N-ZA-Mn-za-m' 
end
